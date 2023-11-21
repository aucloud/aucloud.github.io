---
title: Using Terraform against AUCloud's implementation of VMware Cloud Director (vCD)
description: Using Terraform against AUCloud's implementation of VMware Cloud Director (vCD)
tags:
    - vmware-cloud-director
    - API
    - SDK
---

> :warning: **Effective from Dec 1st, 2023**

## Overview

In order to configure your AUCloud IaaS tenancies using Terraform, you must first pass the necessary authentication information to the VMware Cloud Director (vCD) Terraform provider.  The account used should have the "Organization Administrator" role in VCD as this will have the required permissions to perform all resource add/change/destroy via Terraform.

There are currently 2 supported authenticated methods:

1. Connecting with username & password, or
1. Connecting with an API token

## Connecting with username & password

1. Follow [the steps outlined here](./vcd_local_user_setup.md) to create a "local" VCD user if you have not already done so.
1. [Retrieve the unique name of your VCD tenancy](./retrieve_tenancy_name.md)
1. Retrieve the API server URL for your VCD tenancy from [the list of AUCloud VMware Cloud Director API Endpoints](../../reference_urls.md#vmware-cloud-director-api-endpoints)
1. Connect to VCD with Terraform

    The [VMware Cloud Director Terraform Provider](https://registry.terraform.io/providers/vmware/vcd/latest/docs) requires the following inputs in order to connect as a VCD Organization Administrator:

    - **`auth_type`**: must be `"integrated"`
    - **`user`**: username of your "local" VCD user
    - **`password`**: password of your "local" VCD user
    - **`org`**:  unique name of your VCD tenancy
    - **`url`**: API URL of your VCD instance + `"/api"`, e.g. `https://api-vcd-sz201.portal.australiacloud.com.au/api`

    Once you have these values you can fill in the missing provider configuration:

    ![Connect Org Admin](./assets/connect_org_admin.jpg)

## Connecting with a VCD user API token

1. Generate a VCD API token, [Using a manually generated VCD API token.](./authentication_methods.md#use-vcd-api-token)
1. [Retrieve the unique name of your VCD tenancy](./retrieve_tenancy_name.md)
1. Retrieve the API server URL for your VCD tenancy from [the list of AUCloud VMware Cloud Director API Endpoints](../../reference_urls.md#vmware-cloud-director-api-endpoints)
1. Connect to VCD with Terraform

    The [VMware Cloud Director Terraform Provider](https://registry.terraform.io/providers/vmware/vcd/latest/docs) requires the following inputs in order to connect as a VCD Organization Administrator:

    - **`auth_type`**: must be `"token"`
    - **`user`**: must be `"none"`
    - **`password`**: must be `"none"`
    - **`token`**: The API token you created in step 1
    - **`org`**:  unique name of your VCD tenancy
    - **`url`**: API URL of your VCD instance + `"/api"`, e.g. `https://api-vcd-sz201.portal.australiacloud.com.au/api`           

    ![Bearer Token](./assets/bearer_token.jpg)
