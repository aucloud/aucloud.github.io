---
title: Using Terraform against AUCloud's implementation of VMware Cloud Director (VCD)
---

## Overview

In order to configure your AUCloud IaaS tenancies using Terraform, you must first pass the necessary authentication information to the vCloud Director (VCD) Terraform provider.

There are currently 2 supported authenticated methods:

1. Connecting as Org Admin, or
1. Connecting with authorization or bearer token.

## Connecting as Org Admin

![Picture6.jpg](./assets/connect_org_admin.jpg)

In the above example, there are 4 arguments you must populate using information obtained from [https://portal.australiacloud.com.au/vcloud/api](https://portal.australiacloud.com.au/vcloud/api "https://portal.australiacloud.com.au/vcloud/api") or [https://eportal.australiacloud.com.au/vcloud/api](https://eportal.australiacloud.com.au/vcloud/api "https://eportal.australiacloud.com.au/vcloud/api") depending on whether you operate in the Official or Protected Data Community Environment.

![Picture7.jpg](./assets/api_mgmt.jpg)

1. The required **user** argument can be found under the Username column aligned with the Service you wish to configure. It consists of the rational number before the @ symbol.

1. The **password** argument is identical to that which you use to login to the portal. It is for this reason that we recommend that you either secure your source code or pass the argument in as a variable.
    
1. The **org** argument consists of the string to the right of the @ symbol in the Username column.
    
1. The **API** argument must be the URL listed under the API URL column with /api appended to the end of the string.
    
    Once these arguments have been correctly defined, you may start configuring or importing VCD resources using Terraform.

    _**Note:** If you have more than one service, all of the above values must be drawn from the record associated with the service you wish to configure_

## Connecting with authorization or bearer token

![Picture8.jpg](./assets/bearer_token.jpg)

In the above example, there are 2 arguments you must populate using information obtained from [https://portal.australiacloud.com.au/vcloud/api](https://portal.australiacloud.com.au/vcloud/api "https://portal.australiacloud.com.au/vcloud/api") or [https://eportal.australiacloud.com.au/vcloud/api](https://eportal.australiacloud.com.au/vcloud/api "https://eportal.australiacloud.com.au/vcloud/api") depending on whether you operate in the Official or Protected Data Community Environment. There is also an additional value, **token**, which needs to be obtained from an API call outside of Terraform.

![Picture9.jpg](./assets/api_mgmt2.jpg)

1. The **org** argument consists of the string to the right of the @ symbol in the Username column.
    
1. The **API** argument must be the URL listed under the API Url column with /api appended to the end of the string.
    

In order to obtain the necessary value for the token argument, you must make an **HTTP POST request** to the API URL appended with /api/sessions associated with your VCD service. In this POST request you must represent your full username (including the @ symbol) and password as a base64 encoding in an Authorization header.

See [https://developer.vmware.com/apis/1245/vmware-cloud-director/doc/doc/operations/POST-Login.html](https://developer.vmware.com/apis/1245/vmware-cloud-director/doc/doc/operations/POST-Login.html "https://developer.vmware.com/apis/1245/vmware-cloud-director/doc/doc/operations/post-login.html")

A successful request will return a x-vmware-vcloud-access-token which can be inserted into the Terraform token argument.

Below is a simple bash script to obtain this information:

![Picture10.jpg](./assets/bash.jpg)