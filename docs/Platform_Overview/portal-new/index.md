---
title: Portal (New)
description: The AUCyber Portal provides the front door access, account management to AUCyber's infrastructure services.
tags:
    - portal
---

## AUCyber VMWare Cloud Director (vCD) Portal Overview

AUCyber is releasing a new VMWare Cloud Director (vCD) Portal that is built to provide a flexible and secure platform for faster feature development for our customers. As part of the initial release, we are modernising our identity provider solution which provides customers the following benefits:

- Streamlined access to AUCyber's products
- Single-Sign-On (SSO) to VMWare Cloud Director once authenticated
- Allow users the ability to manage their own passwords
- Additional functionality to manage password reset intervals

### What does this mean for you

Effective 18 June, access to administer your VMware Cloud Director (vCD) services will be automatically migrated to the new Portal. This will coincide with a replication of the current Portal User Database and associated vCD permissions to our new Identity provider.

#### Setting up your new Portal Account

!!! note "Password and 2FA credentials are encrypted and are not able to be migrated to the new Portal along with the user identities and permissions." 

To get setup with the new portal to continue to access vCD you will need to go through the [initial setup of your new portal account](./portal-account-setup.md#initial-setup).

#### Using VMWare Cloud Director (vCD) APIs and tools

If you interact with our vCD environments outside of the web User Interface (UI), you need to [change the way you authenticate](./api-authentication.md).  Affected VMware tools and services include, but are not limited to:

- [VCD Terraform Provider](https://registry.terraform.io/providers/vmware/vcd/latest/docs)
- [VCD API](https://docs.vmware.com/en/VMware-Cloud-Director/index.html)
- [VCD PowerCLI cmdlets](https://developer.vmware.com/docs/powercli/latest/products/vmwareclouddirector/)
- [VCD OVF Tool](https://docs.vmware.com/en/VMware-Cloud-Director/10.5/VMware-Cloud-Director-Install-Configure-Upgrade-Guide/GUID-2B34775B-7C96-44F2-A9A3-D6A9D3B0CAD2.html)

## Release Stages

The way that you access key features will change as a result of this release. The process of the changes are outlined below:

### Stage 1: Current state

![current-state](./assets/portal-initial-state.png)

- Currently there is a [single Portal](https://portal.australiacloud.com.au) that handles billing and authentication into vCD.
- The existing portal is where you currently go to gain access all features.

### Stage 2: Migration

![migration-state](./assets/portal-migration-state.png)

- We will be copying all users and permissions over to our new identity provider.
- AUCyber's strong security controls mean that passwords and 2FA credentials are encrypted in our database, preventing us from migrating existing passwords and 2FA devices to our new Portal. 
- This will create an **additional** account for all users in our new Portal.

### Stage 3: Accessing the new vCD Portal

![final-state](./assets/portal-final-state.png)

- Following the release our [existing Portal](https://portal.australiacloud.com.au) will still be live, **both portals will be running side-by-side**. The following features will only be available in our new Portal, they will **no longer be accessible in the [existing Portal](https://portal.australiacloud.com.au)**. Follow the links below for details of each of these changes:
    - [Access VMware Cloud Director (VCD) tenancies](#access-vmware-cloud-director-vcd-tenancies)
    - [Manage Users and Permissions with your organisation](#manage-users-and-permissions-with-your-organisation)
    - [Account Self Management (user details and password)](#account-self-management-user-details-and-password)
- All other features of the existing Portal will continue to function as normal. 
- Both portals will run side-by-side, and you will have a separate login for each portal. 
- Attempting to access a feature in the old Portal that has been moved to the new Portal will result in you being redirected to the new Portal. 
    - If you click the "vCloud" or "Users" (highlighted below), you will be redirected to our new Portal to access this functionality. 

        ![removed-features](./assets/removed-features.png)

!!! note "A future release will migrate billing functionality into the new portal, and the old portal will be decommissioned."

## Changed Features

### Access VMware Cloud Director (VCD) tenancies

Our new Portal is built on top of a new identity provider that allows SSO authentication into your VCD tenancies.  This means that you'll only need to provide your credentials once when logging in, then you'll be able to access all your VCD tenancies from a single dashboard with one click!

Please refer to [this guide](./vcd-login.md) for details on how to login to VCD using our new Portal. 

### Manage Users and Permissions with your organisation

Managing users and permissions in the new Portal will be handled by our new identity provider.  Proving more ways to manage your users, and more fine grained controls over access to your organisation portal, and the VCD tenancies in it. 

Please refer to [this guide](./vcd-user-mgmt.md) for more details on how to manage users and permissions in our new Portal. 

### Account Self-Management (user details and password)

Managing your own user in the new Portal will be handled by our new identity provider.  This includes updating your password, resetting 2FA, managing sessions across devices, and updating your personal information. 

Please refer to [this guide](./portal-account-self-mgmt.md) for more details on how to manage your account using our new Portal. 

## Getting Support

Please refer to [this guide](../support/index.md) for information on getting support in general at AUCyber.

For convenience, once you have [logged in](./portal-login.md) to the Portal, there is a **Help** button on the left sidebar. Click this to open an email to [support@aucyber.com.au](mailto:support@aucyber.com.au).
  
  ![Help](./assets/help.png)

