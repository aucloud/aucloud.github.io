---
title: View properties and manage permissions
description: View properties and manage permissions
---

## View properties and manage permissions

!!! warning

    Be careful what data you expose to the internet. Grant the minimum access required.

Bucket configuration and access are managed in the StorageGRID **Tenant Manager** at [https://s3-tenant.aucyber.com.au](https://s3-tenant.aucyber.com.au).

1. Select **Buckets** and choose your bucket to view its details - region, object count, space used, and versioning and object lock status.

1. Access is controlled with **bucket policies** - a JSON document attached to the bucket that defines who can perform which actions on the bucket and its objects.

For a worked example of creating a user, generating access keys and attaching a bucket policy that grants access to a single bucket, see [Limiting bucket access to specific access keys](./limiting_bucket_access_to_specific_access_keys.md). For guidance on writing least-privilege policies, see [Best Practices](./best_practices.md).
