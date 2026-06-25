---
title: Delete an object or a bucket
description: Delete an object or a bucket
---

## Delete an object

Delete objects with an S3 client (see [Accessing Object Storage](./accessing_object_storage.md)).

```bash
# delete a single object
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au s3 rm s3://mybucket/myfile.txt

# delete everything under a prefix
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au s3 rm s3://mybucket/mydir/ --recursive
```

## Delete a bucket

A bucket must be empty before it can be deleted. Empty and remove it with an S3 client:

```bash
# empty the bucket, then delete it
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au s3 rm s3://mybucket --recursive
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au s3 rb s3://mybucket
```

You can also delete an empty bucket from the **Buckets** page of the [Tenant Manager](https://s3-tenant.aucyber.com.au).

!!! warning

    Deletion is permanent. With versioning or object lock enabled, deleting an object may leave a delete marker or be blocked until the lock retention expires.
