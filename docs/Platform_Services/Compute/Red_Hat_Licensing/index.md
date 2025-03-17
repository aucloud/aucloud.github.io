---
title: Red Hat Licensing
description: Deploying and licensing Red Hat virtual machines on AUCyber
tags:
   - red-hat
---

## Overview 
AUCyber's compute service allows users to provision virtual machines running Red Hat Enterprise Linux (RHEL).

Under the CCSP program tenants must use provision licenses from AUCyber using the 'Red Hat update infrastructure' setup by AUCyber.

Currently AUCyber provides licenses for:
- Red Hat Enterprise Linux 8
- Red Hat Enterprise Linux 9

Please contact support if you need other Red Hat products or versions.

### How does it work

At a high level:

1. Users provision a RHEL VM from a ISO or template
   1. The vm at this stage will be unable to pull updates from Red Hat or AUCyber as it will be unlicensed.
2. Users apply a license entitlement (via a `rpm`), to their virtual machine. 
   1. The license entitlement will target updating to the AUCyber Red Hat update infrastructure
3. Users will then be able to pull updates and content from the AUCyber update infrastructure. 
4. Users Red Hat vms will automatically be billed when deployed on AUCyber.
5. License entitlements will need to be refreshed if VMs are deployed continuously for 2 years or more.


### Limitations

1. Red Hat update infrastructure `rhui.australiacloud.com.au` is only accessible from AUCyber IP ranges.
2. AUCyber can only license Red Hat on AUCyber's infrastructure.



### Further details

1. [Installing and updating license entitlements](./installing_updating.md)
2. [Red Hat Update Infrastructure](https://access.redhat.com/documentation/en-us/red_hat_update_infrastructure/4/html/configuring_and_managing_red_hat_update_infrastructure/index)