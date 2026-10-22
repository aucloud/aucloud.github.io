---
title: Using Terraform against AUCyber's implementation of VMware Cloud Director (vCD)
description: Using Terraform against AUCyber's implementation of VMware Cloud Director (vCD)
tags:
    - vmware-cloud-director
    - API
    - SDK
---

## Overview

In order to configure your AUCyber IaaS tenancies using Terraform, you must first pass the necessary authentication information to the VMware Cloud Director (vCD) Terraform provider.

The provider authenticates using a VCD API token. If you already have a local VCD user you can continue to use it with the provider's `integrated` authentication type, see [Existing local users](./authentication_methods.md#existing-local-users). The token has the same role and permissions as the user that created it, so the token should be created by a user with the "Organization Administrator" role in VCD. This role has the required permissions to perform all resource add/change/destroy via Terraform.

## Connecting with a VCD API token

1. Create a VCD API token by following [this guide](./create_vcd_api_token.md) if you do not already have one
1. [Retrieve the unique name of your VCD tenancy](./retrieve_tenancy_name.md)
1. Retrieve the API server URL for your VCD tenancy from [the list of AUCyber VMware Cloud Director API Endpoints](../../reference_urls.md#vmware-cloud-director-api-endpoints)
1. Connect to VCD with Terraform

    The [VMware Cloud Director Terraform Provider](https://registry.terraform.io/providers/vmware/vcd/latest/docs) (version 3.5.0 or later) requires the following inputs in order to connect with an API token:

    - **`auth_type`**: must be `"api_token"`
    - **`api_token`**: the API token you created in step 1
    - **`org`**:  unique name of your VCD tenancy
    - **`url`**: API URL of your VCD instance + `"/api"`, e.g. `https://api-vcd-sz201.portal.australiacloud.com.au/api`

    For example:

    ``` hcl
    provider "vcd" {
      auth_type = "api_token"
      api_token = var.vcd_api_token
      org       = "<Org-Id>"
      url       = "https://api-vcd-sz201.portal.australiacloud.com.au/api"
    }
    ```

    The provider exchanges the API token for a bearer token on your behalf. Treat the token as a secret: pass it in as a variable or environment variable rather than committing it to source control.

    !!! note

        Sessions authenticated with an API token cannot change passwords, manage users or create further API tokens.
