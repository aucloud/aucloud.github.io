---
title: Reference URLs
description: Reference URLs for services in AUCyber
---

## Sovereignty Zone Locations

| Location | Sovereignty Zone |
| ---- | ------ |
| Canberra |  CSZ |
| Sydney |  SSZ |
| Brisbane |  BSZ |
| Melbourne |  MSZ |

## Portal UI

| URL | Community environment |
| ---- | ------ |
| [https://portal.australiacloud.com.au/login](https://portal.australiacloud.com.au/login) |  Sovereign Cloud |


## Portal API endpoints

| URL | Community environment |
| ---- | ------ |
| [https://api.portal.australiacloud.com.au/login](https://portal.australiacloud.com.au/login) |  Sovereign Cloud |


## VMware Cloud Director API endpoints

| URL | Community environment | Sovereignty Zone |
| ---- | ------ | --------------------- |
| [https://api-vcd-sz101.portal.australiacloud.com.au/api](https://api-vcd-sz101.portal.australiacloud.com.au/api) |  Sovereign Cloud | CSZ |
| [https://api-vcd-sz201.portal.australiacloud.com.au/api](https://api-vcd-sz201.portal.australiacloud.com.au/api) |  Sovereign Cloud | SSZ |
| [https://api-vcd-bsz.portal.australiacloud.com.au/api](https://api-vcd-bsz.portal.australiacloud.com.au)  | Sovereign Cloud | BSZ |
| [https://api-vcd-msz.portal.australiacloud.com.au/api](https://api-vcd-msz.portal.australiacloud.com.au)  | Sovereign Cloud | MSZ |


## Veeam M365 Backup portal

| URL | Community environment |
| ---- | ------ |
| [https://vbo-csz.australiacloud.com.au/](https://vbo-csz.australiacloud.com.au/) | Sovereign Cloud |

## Object Storage S3 API

S3-compatible object storage is provided by NetApp StorageGRID. There is a **single S3 API endpoint** serving all sovereignty zones; the zone (CSZ or SSZ) is selected per bucket when the bucket is created in the Tenant Manager.

| URL | Purpose |
| ---- | ------ |
| [https://s3.aucyber.com.au](https://s3.aucyber.com.au) | S3 API endpoint - S3 clients, SDKs and CLI tools |
| [https://s3-tenant.aucyber.com.au](https://s3-tenant.aucyber.com.au) | Tenant Manager - web UI for buckets, users and access keys |

Both path-style (`https://s3.aucyber.com.au/<bucket>/<key>`) and host based (`https://<bucket>.s3.aucyber.com.au/<key>`) addressing are supported.



## AUCyber Microsoft KMS Server

| URL | IP Target |
| ---- | ---- |
| 103.109.112.109 | CSZ |
| 103.2.240.109 | SSZ |

## Public Facing Repositories and Documentation

- [AUCyber Technical Documentation](https://docs.australiacloud.com.au/latest/)
- [ACloud Public Github Org](https://github.com/aucloud)

