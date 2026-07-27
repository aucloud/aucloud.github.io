---
title: Object versioning
description: Enable object versioning, recover and restore previous versions, and understand the storage and cost implications
---

## Overview

Object versioning keeps a copy of every version of an object in a bucket. With versioning enabled, each time you upload an object under an existing key StorageGRID keeps the old version and adds a new *current* version, and a delete removes the object from view without destroying the underlying data. This lets you recover from an accidental overwrite or deletion at any time.

Every version is identified by a unique **version ID**. The most recent version is the *current* version; all earlier versions are *non-current* but remain fully retrievable by their version ID.

!!! note
    Versioning is set per bucket. Once enabled it can be **suspended** (StorageGRID stops creating new versions) but it cannot be turned off completely, and versions already created are always retained until you delete them explicitly. Object lock is built on versioning and, unlike versioning, must be enabled **when the bucket is created** - see [Best Practices](./best_practices.md).

The examples below use the AWS CLI against the AUCyber endpoint. Set up a profile first - see [Accessing Object Storage](./accessing_object_storage.md). Versioning operations use the lower-level `s3api` commands.

## Enable versioning

### Tenant Manager

1. Sign in to the [Tenant Manager](https://s3-tenant.aucyber.com.au) and open the **Buckets** page.
1. Select the bucket, open the **Bucket options** (or **Bucket versioning**) section and set versioning to **Enabled**.

### AWS CLI

```bash
# enable versioning
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au \
    s3api put-bucket-versioning --bucket mybucket \
    --versioning-configuration Status=Enabled

# confirm it is on
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au \
    s3api get-bucket-versioning --bucket mybucket
# -> { "Status": "Enabled" }
```

## Work with versions

Each upload to the same key creates a new current version and pushes the previous one to non-current:

```bash
aws ... s3api put-object --bucket mybucket --key report.txt --body v1.txt   # creates version 1
aws ... s3api put-object --bucket mybucket --key report.txt --body v2.txt   # v2 current, v1 retained
```

List every version and delete marker for a key. `IsLatest` marks the current version:

```bash
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au \
    s3api list-object-versions --bucket mybucket --prefix report.txt
```

Retrieve the current version, or any earlier one by its `VersionId`:

```bash
# current version
aws ... s3api get-object --bucket mybucket --key report.txt current.txt

# a specific previous version
aws ... s3api get-object --bucket mybucket --key report.txt \
    --version-id <VersionId> previous.txt
```

## Delete and restore

On a versioned bucket, a normal delete does **not** erase data - it adds a *delete marker* that becomes the new current version, so the object stops appearing in listings and a plain `get-object` returns `NoSuchKey`. Every earlier version is still there.

```bash
# "delete" the object -> creates a delete marker
aws ... s3api delete-object --bucket mybucket --key report.txt
```

There are two ways to restore:

**Undelete** - remove the delete marker so the most recent version becomes current again. Find the delete marker's `VersionId` with `list-object-versions`, then delete that specific version:

```bash
aws ... s3api delete-object --bucket mybucket --key report.txt \
    --version-id <DeleteMarkerVersionId>
```

**Roll back to an earlier version** - copy an old version over the key. This makes a new current version whose contents are the old version's, while leaving the version history intact:

```bash
aws ... s3api copy-object --bucket mybucket --key report.txt \
    --copy-source "mybucket/report.txt?versionId=<OldVersionId>"
```

!!! warning
    Deleting a version by its `VersionId` (rather than omitting it) is **permanent** - that version's data is destroyed and cannot be recovered. Deleting *without* a version ID is the safe, reversible operation that only adds a delete marker.

## Storage and cost considerations

Versioning trades storage for safety. Because nothing is ever truly overwritten or deleted while versions exist, storage usage - and therefore cost - grows with the number and size of versions you keep:

- **Every version is billed.** Ten edits of a 100 MB object consume roughly 1 GB, not 100 MB, until the old versions are removed.
- **Overwrites and deletes do not free space.** A delete only adds a (tiny) delete marker; the data stays until every version is explicitly deleted.
- **High-churn workloads cost the most.** Objects that are frequently updated (logs, databases, state files) accumulate versions quickly.

Control the growth with an S3 **lifecycle rule** that automatically expires non-current versions and cleans up orphaned delete markers, so you keep a recovery window without paying to retain history forever:

```bash
cat > lifecycle.json <<'EOF'
{
  "Rules": [{
    "ID": "expire-old-versions",
    "Status": "Enabled",
    "Filter": {},
    "NoncurrentVersionExpiration": { "NoncurrentDays": 30 },
    "Expiration": { "ExpiredObjectDeleteMarker": true }
  }]
}
EOF

aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au \
    s3api put-bucket-lifecycle-configuration --bucket mybucket \
    --lifecycle-configuration file://lifecycle.json
```

The rule above keeps non-current versions for 30 days (adjust `NoncurrentDays` to your recovery needs) and then deletes them, and removes delete markers once no versions remain behind them. To stop creating new versions entirely without deleting existing ones, suspend versioning (`Status=Suspended`).

For details refer to NetApp's official documentation: [Change bucket versioning state](https://docs.netapp.com/us-en/storagegrid/tenant/changing-bucket-versioning.html) and [S3 lifecycle configuration](https://docs.netapp.com/us-en/storagegrid/s3/create-s3-lifecycle-configuration.html).
