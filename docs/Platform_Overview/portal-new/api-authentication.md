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

**Important**: VCD does not currently support username + password authentication for SSO accounts. This means that new "local" VCD users will need to be created in order to use traditional username + password authentication for tools like the VCD API.

## What to do next?

To continue accessing AUCyber vCD instances and using related tools (APIs, Terraform Provider, OVF tool, etc.), consider these authentication methods:

- Username + Password with a "local" vCD user
- Bearer Token

For detailed guidance on adapting to these changes, please refer to [this guide](../../Platform_Services/Compute/using-the-api-new/authentication_methods.md)

## Getting Support

Please refer to [this guide](../support/index.md) for information on getting support in general at AUCyber.
