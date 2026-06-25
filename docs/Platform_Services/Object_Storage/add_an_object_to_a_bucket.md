---
title: Add an object to a bucket
description: Add an object to a bucket
---

## Add an object to a bucket

Objects are uploaded with an S3 client. See [Accessing Object Storage](./accessing_object_storage.md) for how to configure a client with the `https://s3.aucyber.com.au` endpoint and your access keys.

Using the AWS CLI, upload with `s3 cp`:

```bash
# upload a single file
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au s3 cp myfile.txt s3://mybucket/

# upload a whole directory
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au s3 cp ./mydir s3://mybucket/mydir/ --recursive
```

!!! note

    Other S3 clients work equally well - see [Accessing Object Storage](./accessing_object_storage.md) for s5cmd, Cyberduck and S3 Browser. On Linux, [rclone](https://rclone.org/) and the [MinIO client](https://min.io/download) are also good options.
