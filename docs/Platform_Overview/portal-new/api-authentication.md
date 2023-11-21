---
title: Portal API Authentication
description: Portal API Authentication
tags:
    - portal
    - API
    - VCD
---

## Overview

If you interact with an AUCloud VMware Cloud Director (VCD) environment outside of the web GUI you may need to update the way that you authenticate after the release of the new AUCloud Portal on November 30th, 2023.

Any VMware tool or service that requires authentication may be effected.  Some of the more commonly used tools that will be effected are:

- [VCD Terraform Provider](https://registry.terraform.io/providers/vmware/vcd/latest/docs)
- [VCD API](https://docs.vmware.com/en/VMware-Cloud-Director/index.html)
- [VCD PowerCLI cmdlets](https://developer.vmware.com/docs/powercli/latest/products/vmwareclouddirector/)
- [VCD OVF Tool](https://docs.vmware.com/en/VMware-Cloud-Director/10.5/VMware-Cloud-Director-Install-Configure-Upgrade-Guide/GUID-2B34775B-7C96-44F2-A9A3-D6A9D3B0CAD2.html)

## What's changed

Our new Portal is built on top of a new identity provider that uses OIDC to facilitate access to VCD tenancies. Previously, identities in VCD were based on LDAP. 

As of Dec 2023, VCD does not support username + password authentication with OIDC based identities.  This means that if you previously used your VCD username and password to authenticate to a VMware tool or service (like the VCD API), it will no longer work.  

## What to do next


