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
- Named Disks
	* 'Shared' Named Disks cannot be migrated - they need to be removed.

- VMware Cloud Directory Availablility (VCDA) - Disaster Recovery (DRaaS)
	* Virtual Machines that are Protected by VCDA need to have their protection remove and re-created.  This has to happen if either the Source or Destination tenancy is about to under go NSX-V to NSX-T migration.

## Important Cavets

- Veeam backups
- vApp Snapshots are lost/removed in the migration

## VMware References

Official migration tool documentation
- [VMware NSX Migration for VMware Cloud Director Documentation](https://docs.vmware.com/en/VMware-NSX-Migration-for-VMware-Cloud-Director/1.4.2/user-guide/GUID-index.html)



DC Group Org VDC Limit Exceeded
vApp name exceeds 118 char
Unsupported vApps/VMs
Unsupported Routed vApp Network Configuration
Fencing enabled on vApps
VM with Independent disks having different storage policies and fast provisioning enabled
No free interface on edge gateways
Published/Subscribed Catalog
Shared Independent Disks
Cross VDC Networking
DHCP Binding: Binding IP addresses overlaps with static IP Pool range
DHCP Relay: Domain names are configured
DHCP Relay: More than 8 DHCP servers configured
Gateway Firewall: Negate Flag enabled
Gateway Firewall: Gateway Interfaces in rule
Gateway Firewall: Networks connected to different edge gateway used
Gateway Firewall: Unsupported grouping object
NAT: NAT64 rule
NAT: Range of IPs or network in DNAT rule
IPsec: Route based session type
IPsec: Unsupported Encryption Algorithm
IPsec: DNAT rules not supported with Policy-based session type
OSPF routing protocol
User-defined Static Routes
LoadBalancer: VIP IP address conflict
LoadBalancer: Application Rules
LoadBalancer: Custom monitor
LoadBalancer: Default pool not configured
LoadBalancer: Unsupported persistence
LoadBalancer: Unsupported algorithm
LoadBalancer: Application profile is not added
LoadBalancer: Pool member IP overlapping DNAT in transparent mode
LoadBalancer: IPv6 pool member in transparent mode
LoadBalancer: Pool members using different ports in transparent mode
LoadBalancer: IPv6 Virtual server in transparent mode
LoadBalancer: VIP overlapping with DNAT in transparent mode
LoadBalancer: VIP overlapping with SNAT in transparent mode
LoadBalancer: VIP overlapping with IPsec in transparent mode
LoadBalancer: Pools are mixed transparent and non transparent
L2VPN service
SSLVPN service
Syslog service
SSH service
GRE Tunnel
Distributed Firewall: Invalid objects in rule
Distributed Firewall: Unsupported type in applied to section
Distributed Firewall: Networks connected to different edge gateway used
Distributed Firewall: Layer 2 Rule
Distributed Firewall: Invalid Security Group objects in rule
