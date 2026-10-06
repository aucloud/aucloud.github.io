---
title: Portal
description: The AUCyber Portal provides the front door access, account management to AUCyber's infrastructure services.
tags:
    - portal
---

!!! info "Effective from the Portal release"
    This page describes the AUCyber Portal at [portal.aucyber.com.au](https://portal.aucyber.com.au), scheduled for release in Q4 2026. These instructions take effect once the Portal is released. Until then, continue to use the [legacy Portal](../portal/index.md) at portal.australiacloud.com.au and its documentation.

## AUCyber VMware Cloud Director (VCD) Portal overview

The AUCyber VMware Cloud Director (VCD) Portal at [https://portal.aucyber.com.au](https://portal.aucyber.com.au) is built to provide a flexible and secure platform for faster feature development for our customers. It replaces the [legacy Portal](../portal/index.md) at portal.australiacloud.com.au, which will no longer function once the Portal is released.

As part of this release, we are modernising how you log in, which provides customers the following benefits:

- Streamlined access to AUCyber's products
- Single Sign-On (SSO) to VMware Cloud Director once authenticated
- Allow users the ability to manage their own passwords and MFA
- Additional functionality to manage password reset intervals

### What does this mean for you

Access to administer your VMware Cloud Director (VCD) services moves to the Portal. Your user account and associated VCD permissions are copied across from the legacy Portal. The legacy Portal will no longer function once the Portal is live, and you will need to use the Portal for all access.

#### Setting up your Portal account

!!! note "Password and MFA credentials are encrypted and are not able to be migrated to the Portal along with the user identities and permissions."

To get set up with the Portal and continue to access VCD you will need to go through the [initial setup of your Portal account](./portal-account-setup.md#initial-setup).

#### Using VMware Cloud Director (VCD) APIs and tools

If you interact with our VCD environments outside of the web User Interface (UI), you need to [change the way you authenticate](./api-authentication.md). Affected VMware tools and services include, but are not limited to:

- [VCD Terraform Provider](https://registry.terraform.io/providers/vmware/vcd/latest/docs)
- [VCD API](https://techdocs.broadcom.com/us/en/vmware-cis/cloud-director/vmware-cloud-director/10-6.html)
- [VCD PowerCLI cmdlets](https://developer.broadcom.com/powercli/latest/products/vmwareclouddirector/)
- [VCD OVF Tool](https://developer.broadcom.com/tools/open-virtualization-format-ovf-tool/latest)

## Changed features

The way that you access key features changes as a result of this release. Follow the links below for details of each of these changes.

### Access VMware Cloud Director (VCD) tenancies

The Portal provides Single Sign-On (SSO) into your VCD tenancies. This means that you'll only need to provide your credentials once when logging in, then you'll be able to access all your VCD tenancies from a single dashboard with one click.

Please refer to [this guide](./vcd-login.md) for details on how to log in to VCD using the Portal.

### Manage users and permissions within your organisation

Managing users and permissions in the Portal provides more ways to manage your users, and more fine grained controls over access to your organisation's Portal and the VCD tenancies in it.

Please refer to [this guide](./portal-users-mgmt.md) for more details on how to manage users and permissions in the Portal.

### Account self management (user details and password)

You can manage your own user in the Portal. This includes updating your password, resetting MFA, and updating your personal information.

Please refer to [this guide](./portal-account-self-mgmt.md) for more details on how to manage your account using the Portal.

## Getting support

Please refer to [this guide](../support/index.md) for information on getting support in general at AUCyber.
