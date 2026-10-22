---
title: vCD Portal API Authentication
description: vCD Portal API Authentication
tags:
    - portal
    - API
    - VCD
---


!!! info "Effective from the Portal release"
    This page describes the AUCyber Portal at [portal.aucyber.com.au](https://portal.aucyber.com.au), scheduled for release in Q4 2026. These instructions take effect once the Portal is released. Until then, continue to use the [legacy Portal](../portal/index.md) at portal.australiacloud.com.au and its documentation.

## Overview

If you're interacting with an AUCyber VMware Cloud Director (VCD) environment beyond the web GUI, note that the authentication method changes with the AUCyber Portal at portal.aucyber.com.au.

Affected VMware tools and services include, but are not limited to:

- [VCD Terraform Provider](https://registry.terraform.io/providers/vmware/vcd/latest/docs)
- [VCD API](https://techdocs.broadcom.com/us/en/vmware-cis/cloud-director/vmware-cloud-director/10-6.html)
- [VCD PowerCLI cmdlets](https://developer.broadcom.com/powercli/latest/products/vmwareclouddirector/)
- [VCD OVF Tool](https://developer.broadcom.com/tools/open-virtualization-format-ovf-tool/latest)

## What's changed?

The Portal logs you in to VCD using Single Sign-On (SSO), replacing the previous LDAP-based accounts.

**Important**: VCD does not support username + password authentication for SSO accounts, and you are no longer able to create local VCD users. Any new tool or integration that needs to authenticate to VCD must use a VCD API token.

If you already have a local VCD user, it will remain active and you can continue to use it to authenticate to the VCD API. Note that Broadcom has deprecated local users in VMware Cloud Director from version 10.4.1 onwards. Local users remain fully supported until the next major release of VMware Cloud Director, for which Broadcom has not yet published a date. See the "Deprecation Process for VMware Cloud Director Local Users for Production Use" notice in the [VMware Cloud Director 10.6 Release Notes](https://techdocs.broadcom.com/us/en/vmware-cis/cloud-director/vmware-cloud-director/10-6/release-notes/vmware-cloud-director-106-release-notes.html). We recommend that you move any existing integrations to a VCD API token now.

## What to do next?

To continue accessing AUCyber VCD instances and using related tools (APIs, Terraform Provider, PowerCLI, etc.), create a VCD API token and use it to authenticate:

1. [Create a VCD API token](../../Platform_Services/Compute/using-the-api-new/create_vcd_api_token.md) from the Portal
1. Follow [Authenticating into VMware Cloud Director](../../Platform_Services/Compute/using-the-api-new/authentication_methods.md) to exchange the token for a bearer token

Tool specific guidance is available for [Terraform](../../Platform_Services/Compute/using-the-api-new/using_terraform_against_AUCloud_implementation_of_vcd.md) and [PowerCLI](../../Platform_Services/Compute/using-the-api-new/establishing_a_connection_to_aucloud_with_powercli.md).

## Getting Support

Please refer to [this guide](../support/index.md) for information on getting support in general at AUCyber.
