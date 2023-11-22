---
title: Authenticating into VMware Cloud Director (VCD)
description: Authenticating into VMware Cloud Director (VCD)
tags:
    - portal
    - API
    - VCD
---



## Overview

There are two methods of authenticating yourself in order to connect to AUCloud VCD instances, enabling usage of the VCD APIs, VCD Terraform Provider, VCD's OVF tool, etc. These methods are:

- Username + password
- Bearer token

## Username + password authentication

This method of authentication required a "local" VCD user.

Follow [this guide for setting up a "local" VCD user](./vcd_local_user_setup.md) to create this user. 

The username and password of this user can then be used to authenticate and establish a connection with VCD. 

## Bearer token authentication

Creating a session by sending a HTTP POST request to the VCD `/api/sessions` endpoint generates a bearer token.  This token can then be used to connect to your VCD instance with many different tools, such as Terraform.  

To create this session, you can:

- Use the username + password of a "local" VCD user
- Use a manually generated VCD API token

### Use username + password

1. Retrieve the username and password of your "local" VCD user.  Follow [this guide for setting up a "local" VCD user](./vcd_local_user_setup.md) if you do not already have one. 
1. [Retrieve the unique name of your VCD tenancy](./retrieve_tenancy_name.md)
1. Retrieve the API server URL for your VCD tenancy from [the list of AUCloud VMware Cloud Director API Endpoints](../../reference_urls.md#vmware-cloud-director-api-endpoints)
1. Base64 encode your organization name, username, and password in the format:

    ```
    [username]@[organization name]:[password]
    ```

1. Send a POST request to the `/api/sessions` endpoint of the VCD API where your tenancy is located:

    ```
    curl --request POST 'https://[VCD API URL]/api/sessions' \
        --header 'Accept: application/*;version=37.2' \
        --header 'Authorization: Basic [Base64 encoded credentials]'
    ```

    For example:
    ```
    curl --request POST 'https://api-vcd-sz101.portal.australiacloud.com.au/api/sessions' \
        --header 'Accept: application/*;version=37.2' \
        --header 'Authorization: Basic e3t2Y2RfdXNlcm5hbWV9fTp7e3ZjZF9wYXNzd29ydh9'
    ```

1. A successful response will include an authorization header in this format:

    ```
    X-VMWARE-VCLOUD-ACCESS-TOKEN: *token*
    ```

    This token can be used as a Bearer token in the `Authorization` header of all future requests, e.g. `Authorization: Bearer *token*`. 

    Here's an example of retrieving VMs using the VCD API using a bearer token of `my-bearer-token`:

    ```
    curl 'https://api-vcd-sz101.portal.australiacloud.com.au/api/query?type=vm' \
        --header 'Accept: application/*+json;version=37.2' \
        --header 'Authorization: Bearer [my-bearer-token]'
    ```

### Use VCD API token

1. Retrieve your manually generated VCD API token.  If you don't have one, follow [this guide to set one up](./create_vcd_api_token.md)
1. [Retrieve the unique name of your VCD tenancy](./retrieve_tenancy_name.md)
1. Retrieve the API server URL for your VCD tenancy from [the list of AUCloud VMware Cloud Director API Endpoints](../../reference_urls.md#vmware-cloud-director-api-endpoints)
1. Send a POST request to `https://[VCD API URL]/oauth/tenant/[organization name]/token` with the a x-www-form-urlencoded body containing: `grant_type=refresh_token&refresh_token=[API Token]`

    Example:
    ```
    curl 'https://api-vcd-sz101.portal.australiacloud.com.au/oauth/tenant/chargeback-integration-sz1/token' \
        --header 'Content-Type: application/x-www-form-urlencoded' \
        --data-urlencode 'grant_type=refresh_token' \
        --data-urlencode 'refresh_token=zmLd5LZ1by2gSHjePgMPWr'
    ```
    
1. A successful request will return a body containing an `access_token`. Subsequent interactions with VCD can now use this as as a Bearer token:

    Example:
    ```
    curl 'https://api-vcd-sz101.portal.australiacloud.com.au/api/query?type=vm' \
        --header 'Accept: application/*+json;version=37.2' \
        --header 'Authorization: Bearer [access_token]'
    ```
