---
title: Prerequisites
description: NSX-V to NSX-T Process
tags:
    - vmware-cloud-director
---

# Prerequisites

## Overview

This page will outline some of the prerequisite actions that may be required before a tenancy can be migrated from NSX-V to NSX-T.

## Assessment

The VMware NSX Migration for VMware Cloud Director will first run a pre-check analysis of a customers tenancy.  The assment may identify issues that will need to be corrected before the migration can happen.  Below is a list of a few common prerequisites:

- vApps & Virtual Machines
  * Virtual Machines cannot be suspended - they need to be powered on or off.
  * Virtual Machines cannot have media inserted - eject all media.
  * vApps cannot be empty - if they are empty, they need to be deleted.
- Network
  * Firewall rules cannot use Virtual Machine objects - change Firewall Rules to IP Sets or Security Groups.  Further details around NSX-T Firewalls found [here](./firewall_rules.md)
- Catalog & Media
  * Org cannot have any Named Disks that are 'Shared' - they need to be removed.

- VMware Cloud Directory Availablility (VCDA) - Disaster Recovery (DRaaS)
  * Virtual Machines that are Protected by VCDA need to have their protection remove and re-created.  This has to happen if either the Source or Destination tenancy is about to under go NSX-V to NSX-T migration.

## Important Cavets

- Veeam backups
- vApp Snapshots are lost/removed in the migration

## VMware References

Official migration tool documentation
- [VMware NSX Migration for VMware Cloud Director Documentation](https://docs.vmware.com/en/VMware-NSX-Migration-for-VMware-Cloud-Director/1.4.2/user-guide/GUID-index.html)