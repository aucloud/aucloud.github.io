---
title: Self-Service Backup Portal – Getting Started
description: Self-Service Backup Portal – Getting Started
tags: 
    - vmware-cloud-director
    - backup
    - veeam
---

## Overview

Once enabled, the self-service backup portal can be accessed via a plug-in through VMware Cloud Director. The self-service portal facilitates operations for VMware Cloud Director VMs protection, including VMs and files restore. These operations do not require specific user accounts to be created. For restore operations, an administrator can access the Self-Service Backup Portal from within VMware Cloud Director.

![Data Protection](./assets/data_protection_veeam.jpg)

## Accessing the Veeam Backup portal

The portal can be accessed via a plug-in through VMware Cloud Director. If you would like access to back-up your VM's in your VMware Cloud Director service, please contact your Customer Success Manager or AUCloud support to request to have this feature enabled. Please provide an estimation of the storage space required (if known)

## Assigning permissions within the AUCloud Portal

1. To assign permissions to a user within your tenancy navigate to the Users page

    Select Create New User or edit, to edit an existing user’s permissions. Further details on how to manage user permission are contained in [Managing User Accounts](../../Platform_Overview/portal/managing_user_accounts.md).  

1. The backup user requires Administrator access to the VMware Cloud Director service. The administrator access role provides the user with full administrator rights within the vCD tenancy. A specific backup administrator role does not currently reside within the portal access; however; this is currently in development. 

## Working with the Portal

Using the Self-Service Backup portal, you can perform the following operations:

- **Dashboard** \- view statistics on VMware Cloud Director backups.

- **Jobs** \- examine and export job sessions data, search for jobs, create new jobs and edit jobs.

- **VMs** \- search for and restore virtual machines and vApps with a single click to their original location (preserving or overwriting the production VM or vApp).

- [**Files**](https://helpcenter.veeam.com/docs/backup/em/em_vcd_self_service_restore_files.html) \- search for the files on the VM guest file system and restore the necessary files to the original location or download to the local machine.

- [**Items**](https://helpcenter.veeam.com/docs/backup/em/em_vcd_self_service_restore_items.html) \- perform application item-level restore (currently, for Microsoft SQL Server and Oracle databases).

Detailed information can be found in the following articles:

- [Viewing Statistics on VMware Cloud Director Backups](./statistics_on_vcd_backups.md)

- [Working with VMware Cloud Director Backup Jobs](./working_with_vcd_backup_jobs.md)

- [VMware Cloud Director VMs and vApps Restore](./restoring_vms_and_vapps.md)