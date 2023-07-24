---
title: Prerequisites
description: NSX-V to NSX-T Process
tags:
    - vmware-cloud-director
---

# Prerequisites

## Overview

This page will outline some of the prerequisite actions that may be required before a tenancy can be migrated from NSX-V to NSX-T.  VMware have provider a tool that will migrate tenancies from NSX-V backed to NSX-T.  The tool makes a lot of network changes across multiple systems (NSX-V, NSX-T, VCD and vSphere) that under underpin the AUCloud platform.  Using the migration tool allows for minimal service interuptions and downtime during the migration process.  Full details on the migration tool are found in the links at the bottom of this article.

This article also outlines some cavets and details related to other products integrated to the platform.  This are in relation to:
- Disaster Recorvery services provided by **VMware Cloud Directory Availability (VCDA)** and,
- Backup services provided by **Data Protection wtih Veeam**.

## Assessment

The VMware NSX Migration for VMware Cloud Director will first run a pre-check analysis of a customers tenancy.  The assment may identify issues that will need to be corrected before the migration can happen.  Below is a list of a few common prerequisites:

- vApps & Virtual Machines
	* Virtual Machines cannot be suspended - they need to be powered on or off.
	* Virtual Machines cannot have media inserted - disconnect all media.
	* vApps cannot be empty - if they are empty, they need to be deleted.
- Network
	* Firewall rules cannot use Virtual Machine objects - change Firewall Rules to IP Sets or Security Groups.  Further details around NSX-T Firewalls found [here](./firewall_rules.md)
- Named Disks
	* 'Shared' Named Disks cannot be migrated - they need to be removed.  Non-shared Named Disks are okay.

- VMware Cloud Directory Availablility (VCDA) - Disaster Recovery (DRaaS)
	* Virtual Machines that are Protected by VCDA need to have their protection remove and re-created.  This has to happen if either the Source or Destination tenancy is about to under go NSX-V to NSX-T migration.

## Important Cavets

- Veeam backups
	* Backups taken before migration will only be able to restored to a 'new' location post migration.  This is due to new VCD object stucture.
	* Backups taken post migration will function normally.

## VMware References

Official migration tool documentation
- [VMware NSX Migration for VMware Cloud Director Documentation](https://docs.vmware.com/en/VMware-NSX-Migration-for-VMware-Cloud-Director/1.4.2/user-guide/GUID-index.html)
	* [Supported Features and Edge Gateway Services](https://docs.vmware.com/en/VMware-NSX-Migration-for-VMware-Cloud-Director/1.4.2/user-guide/GUID-supported-features.html)
	* [Unsupported Features and Edge Gateway Services](https://docs.vmware.com/en/VMware-NSX-Migration-for-VMware-Cloud-Director/1.4.2/user-guide/GUID-unsupported-features.html)
