---
title: View an object
description: View an object
---

## View an object

List and download objects with an S3 client pointed at `https://s3.aucyber.com.au` (see [Accessing Object Storage](./accessing_object_storage.md)).

```bash
# list objects in a bucket
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au s3 ls s3://mybucket

# download an object to the current directory
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au s3 cp s3://mybucket/myfile.txt ./

# view an object's metadata
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au s3api head-object --bucket mybucket --key myfile.txt
```
