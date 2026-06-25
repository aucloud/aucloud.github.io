---
title: Best Practices
description: Best Practices
---

## Best Practices

### Enable object lock

If the data are important and you want to prevent absolutely any deletion (accidental or intentional) - enable object lock. Object lock applies a write-once-read-many (WORM) model: once an object version is locked, it cannot be deleted or overwritten by anyone (including AUCyber) until its retain-until-date has passed.

Consider this carefully against your business-level requirements before enabling it. The downside is that there is no way for you to remove an object until the retain-until-date that was set when the lock was enacted - so choose your retention periods deliberately to match your compliance, legal, or operational needs.

!!! note
    Object lock requires bucket versioning, and it must be enabled **when the bucket is created** - it cannot be turned on for an existing bucket.

For details refer to NetApp's official document: [Manage objects with S3 Object Lock](https://docs.netapp.com/us-en/storagegrid/tenant/using-s3-object-lock.html#s3-object-lock-tasks).

### Always enable object versioning

Always enable object versioning. With versioning enabled, every update or deletion of an object retains the previous version rather than overwriting it, so you can recover from an accidental deletion or update. The only downside of versioning is increased object storage costs.

For details refer to NetApp's official document: [Change bucket versioning state](https://docs.netapp.com/us-en/storagegrid/tenant/changing-bucket-versioning.html).

### Use bucket policies

A bucket policy is a JSON document attached to a bucket that defines exactly who can perform which actions on the bucket and its objects. Use bucket policies to grant the minimum access required and to explicitly control which users, access keys, or accounts can read or write your data. This prevents accidental exposure or access - for example, leaving a bucket open more broadly than intended.

For a worked example, see [Limiting bucket access to specific access keys](./limiting_bucket_access_to_specific_access_keys.md).

For details refer to NetApp's official document: [Use bucket and group access policies](https://docs.netapp.com/us-en/storagegrid/s3/bucket-and-group-access-policies.html).
