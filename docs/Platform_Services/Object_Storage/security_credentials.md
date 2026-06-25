---
title: Security Credentials
description: Security Credentials
---

## Security Credentials

Security credentials (an **Access Key ID** and **Secret Access Key**) are required to access buckets programmatically [via the S3 API](./accessing_object_storage.md). They are managed in the StorageGRID **Tenant Manager** at [https://s3-tenant.aucyber.com.au](https://s3-tenant.aucyber.com.au).

1. To create access keys for your own user, open the user menu (top right) and select **My access keys**, then create a new key.

1. To create access keys for another tenant user, select **Users**, choose the user, and create an access key for them.

1. Optionally set an expiry for the key. When the key is created, copy the **Secret Access Key** immediately - it is shown only once and cannot be retrieved later.

!!! warning

    Treat access keys like passwords. Store them securely, never commit them to source control, and rotate or remove keys that are no longer needed.

For a worked example of creating a dedicated user with keys scoped to a single bucket, see [Limiting bucket access to specific access keys](./limiting_bucket_access_to_specific_access_keys.md).
