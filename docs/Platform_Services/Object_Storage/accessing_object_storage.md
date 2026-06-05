---
title: Accessing Object Storage
description: Accessing Object Storage
---
 
## Overview

Object storage is a data storage architecture that manages data as objects, as opposed to other storage architectures which manages data as a file hierarchy. Each object typically includes the data itself, an amount of metadata and a globally unique identifier which is stored within a bucket.

Buckets are containers for objects. You can have one or more buckets and control who has access to each bucket.

## Accessing Object Storage

1. Object storage is managed directly through the StorageGRID **Tenant Manager** at [https://s3-tenant.aucyber.com.au](https://s3-tenant.aucyber.com.au). Log in with the tenant ID and root credentials supplied by AUCyber. If you do not have these, contact your Customer Success Manager, Sales Executive or AUCyber Support [support@aucyber.com.au](mailto:support@aucyber.com.au).

    ![Log in](./assets/login.png)

1. From the Tenant Manager you can create and manage buckets, users and S3 access keys, and view a summary of your object store including total buckets, objects, storage used and users.

!!! note

    An AWS specific example on how to make this work using the aws command line tool:

1. Create an AWS credentials file (have your `access_key_id` and `secret_access_key` ready):

    ```bash
    aws configure --profile=aucloud
    ```

1. Test connectivity to the s3 bucket you created previously (assumed in this example to be `mybucket`):

    ```bash
    aws --profile=aucloud --endpoint-url=https://s3.aucyber.com.au s3 ls s3://mybucket
    ```
