---
title: Reference URLs
description: Reference URLs for services in AUCLoud
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

## Object Storage API Endpoints (direct use)

!!! note "Path based s3 access only"
    The object storage endpoints in Canberra (CSZ) do not support host based addressing of s3 buckets.

| URL | Community environment | Sovereignty Zone |
| ---- | ------ | --------------------- |
| [https://s3-sz101.australiacloud.com.au](https://s3-sz101.australiacloud.com.au) | Sovereign Cloud | CSZ |
| [https://s3-sz201.australiacloud.com.au](https://s3-sz201.australiacloud.com.au) | Sovereign Cloud | SSZ |


## Object Storage API Endpoints (via VMware Object Storage Extension)

| URL | Community environment | Sovereignty Zone |
| ---- | ------ | --------------------- |
| [https://vos.s3-sz101.australiacloud.com.au/api/v1/s3](https://vos.s3-sz101.australiacloud.com.au/api/v1/s3) | Sovereign Cloud | CSZ |
| [https://s3.vos.sz201.australiacloud.com.au](https://s3.vos.sz201.australiacloud.com.au) | Sovereign Cloud | SSZ |



## AUCloud Microsoft KMS Server

| URL | IP Target |
| ---- | ---- |
| 103.109.112.109 | CSZ |
| 103.2.240.109 | SSZ |

## Public Facing Repositories and Documentation

- [AUCloud Technical Documentation](https://docs.australiacloud.com.au/latest/)
- [ACloud Public Github Org](https://github.com/aucloud)

