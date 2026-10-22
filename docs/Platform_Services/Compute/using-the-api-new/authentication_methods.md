---
title: Authenticating into VMware Cloud Director (VCD)
description: Authenticating into VMware Cloud Director (VCD)
tags:
    - portal
    - API
    - VCD
---



## Overview

The AUCyber Portal logs you in to VMware Cloud Director (VCD) using Single Sign-On (SSO). SSO accounts cannot authenticate with a username and password outside of the Portal, and you are no longer able to create local VCD users.

To connect to an AUCyber VCD instance from outside the Portal, for example to use the VCD API, the VCD Terraform Provider or PowerCLI, you authenticate with a VCD API token. The API token is exchanged for a bearer token, which is then sent in the `Authorization` header of all subsequent requests.

## Existing local users

If you already have a local VCD user, it will remain active and you can continue to use its username and password to authenticate to the VCD API. New local users cannot be created, so any new integration should use a VCD API token.

!!! warning "VMware is deprecating local users"

    Broadcom has deprecated local users in VMware Cloud Director from version 10.4.1 onwards, in favour of accounts from an external identity provider. Local users remain fully supported until the next major release of VMware Cloud Director. Broadcom has not published a date for that release. See the "Deprecation Process for VMware Cloud Director Local Users for Production Use" notice in the [VMware Cloud Director 10.6 Release Notes](https://techdocs.broadcom.com/us/en/vmware-cis/cloud-director/vmware-cloud-director/10-6/release-notes/vmware-cloud-director-106-release-notes.html).

    To avoid disruption when local users are removed, we recommend that you move any existing integrations to a VCD API token now.

An API token has the same role and permissions as the user that created it. Create a separate token for each client or integration so that access can be revoked on a per client basis.

Tool specific guidance is available for:

- [Terraform](./using_terraform_against_AUCloud_implementation_of_vcd.md)
- [PowerCLI](./establishing_a_connection_to_aucloud_with_powercli.md)

## Use VCD API token

1. Retrieve your VCD API token.  If you don't have one, follow [this guide to set one up](./create_vcd_api_token.md)
1. [Retrieve the unique name of your VCD tenancy](./retrieve_tenancy_name.md)
1. Retrieve the API server URL for your VCD tenancy from [the list of AUCyber VMware Cloud Director API Endpoints](../../reference_urls.md#vmware-cloud-director-api-endpoints)
1. Send a POST request to `https://[VCD API URL]/oauth/tenant/[organization name]/token` with an x-www-form-urlencoded body containing: `grant_type=refresh_token&refresh_token=[API Token]`

    Example:
    ```
    curl 'https://api-vcd-sz101.portal.australiacloud.com.au/oauth/tenant/chargeback-integration-sz1/token' \
        --header 'Content-Type: application/x-www-form-urlencoded' \
        --data-urlencode 'grant_type=refresh_token' \
        --data-urlencode 'refresh_token=zmLd5LZ1by2gSHjePgMPWr'
    ```
    
1. A successful request will return a body containing an `access_token`. Subsequent interactions with VCD can now use this as a Bearer token in the `Authorization` header:

    Example:
    ```
    curl 'https://api-vcd-sz101.portal.australiacloud.com.au/api/query?type=vm' \
        --header 'Accept: application/*+json;version=37.2' \
        --header 'Authorization: Bearer [access_token]'
    ```

    The `access_token` expires after a period of time. When it expires, repeat the POST request above to obtain a new one. The API token itself does not expire unless you revoke it.
