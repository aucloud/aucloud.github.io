---
title: Creating a Bucket
description: Creating a Bucket
---

## Creating a Bucket

Buckets are created in the StorageGRID **Tenant Manager** at [https://s3-tenant.aucyber.com.au](https://s3-tenant.aucyber.com.au). See [Accessing Object Storage](./accessing_object_storage.md) for how to log in.

1. In the Tenant Manager, select **Buckets** and create a new bucket.

1. Enter a name for your bucket. The name must comply with S3 (DNS) naming rules:

    - Must be unique across all existing bucket names.
    - Must be between 3 and 63 characters long.
    - May contain only lowercase letters, numbers, hyphens and periods.
    - Must start and end with a lowercase letter or a number.
    - Must not be formatted as an IP address (for example, 192.168.5.4).

1. Select the **region** for the bucket - `csz` (Canberra) or `ssz` (Sydney). The region is fixed for the life of the bucket and determines which sovereignty zone stores its data.

1. If you require **object lock** for ransomware protection, enable it now. Object lock also enables versioning and **cannot be turned on after the bucket is created**. See [Best Practices](./best_practices.md).

1. Create the bucket. It will now appear in your list of buckets.
