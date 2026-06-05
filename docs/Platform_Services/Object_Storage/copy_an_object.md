---
title: Copy an object
description: Copy an object
---

## Copy an object

Copy objects within or between buckets with an S3 client (see [Accessing Object Storage](./accessing_object_storage.md)).

```bash
# copy an object to another bucket
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au s3 cp s3://sourcebucket/myfile.txt s3://destbucket/myfile.txt

# copy (sync) everything under a prefix
aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au s3 sync s3://sourcebucket/mydir/ s3://destbucket/mydir/
```

Bucket names are globally unique across AUCyber object storage.
