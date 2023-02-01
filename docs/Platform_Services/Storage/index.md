---
title: AUCloud Storage
description: AUCloud Storage
---

## Overview

AUCloud uses block storage and S3 object storage.

Block storage and S3 object storage have some key differences. Block storage is used for fast, random access to data like operating systems and applications. S3 object storage stores data as objects in a flat address space. It's used for large amounts of unstructured data like images, videos, and backups. Block storage is generally faster, but S3 object storage is more scalable and cost-effective.

## What is block storage?

Block storage allows data to be accessed quickly and directly, making it suitable for applications that require fast access to data. It is called "block" storage because data is stored in blocks, which are typically fixed-size units of storage. Some key characteristics of block storage include:

- **Stored separately**: Data is stored on a separate device, such as a hard drive or a solid-state drive (SSD).

- **Block addressing**: Data is accessed using a block addressing system, which allows specific blocks to be read or written to.

- **Low-latency, high-performance**: Block storage is often used to store operating systems, applications, and other types of data that require fast, random access.

## What is S3 object storage?

S3 object storage is a secure and reliable solution for storing data in the cloud, with the added benefit of storing data across multiple servers for continued accessibility even in the event of a server failure. The S3 object storage in use at AUCloud has features to protect data, such as encryption, access controls, versioning, life cycle policies and object lock.

S3 storage has several security features to protect data:

- **Encryption**: Data is automatically encrypted when it is stored and decrypted when it is retrieved.

- **Access controls**: You can set permissions on data to control who can access it.

- **Versioning**: You can keep multiple copies of data, which can be useful if you need to restore an older version of a file.

- **Life cycle policies**: You can set policies to automatically move data to different storage tiers or delete it after a certain period of time. This can help you save money and meet compliance requirements.

- **Object Lock**: This feature that allows you to store data in a secure, "locked" state, preventing it from being deleted or overwritten. It can be useful for meeting regulatory or compliance requirements.