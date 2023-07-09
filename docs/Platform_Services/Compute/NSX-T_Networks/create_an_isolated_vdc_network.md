---
title: Create an Isolated VDC Network
description: Create an Isolated VDC Network
tags:
    - vmware-cloud-director
---

## Overview

An organisation virtual data centre network enables its virtual machines (VMs) to communicate with each other or to provide access to external networks. A single VDC can have multiple networks.

There are two network flavours, isolated and routed:

- An isolated (internally connected) network is one that only VMs within the VDC can connect to. This guide describes how to create an isolated VDC network.
- A routed network (externally connected) provides access to machines and networks outside the VDC via the edge gateway. You can have up to nine usable routed networks per VDC. Creation of routed networks is described in [How to create a routed VDC Network.](create_a_routed_vdc_network.md)

Additional information can be viewed on VMware Docs - [Add an Isolated Organization Virtual Data Center Network.](https://docs.vmware.com/en/VMware-Cloud-Director/10.4/VMware-Cloud-Director-Tenant-Portal-Guide/GUID-BCF1FEB1-F50C-4E11-8453-EED101396D0D.html)

## Creating an Isolated VDC Network

To create an Isolated VDC Network, use the following steps:

1. In the VMware Cloud Director *Virtual Datacenters* dashboard, select the VDC in which you want to create the network.

1. In the left navigation panel, select **Networks**.

	![Networks](./assets/networks.png)

1. Click **NEW**.

	![New Network](./assets/networks_new.png)

1.  In the *Scope* page of the *New Organization VDC Network* dialog box, select **Current Organization Virtual Data Center** then click **Next**.

	![New VDC Network](./assets/networks_new_vdc.png)

1.  In the *Network Type* page of the *New Organization VDC Network* dialog box, select **Isolated** then click **Next**.

	![New Isolated Network](./assets/networks_new_type_isolated.png)

1. In the *General* page, enter a **Name** and **Description** for the network. In the **Gateway CIDR** field, the gateway address for the network, then click **Next**.

	![New Isolated Network General](./assets/networks_new_type_isolated_general.png)

1. In the **Static IP Pools** field, enter a range of addresses to be consumed by the VMs connecting to the network, then click **Add**.

	!!! note
	
		- As an example, if you give the gateway address as 192.168.0.1/24, you may then want to create a Static IP Pool of 192.168.0.10-192.168.0.100. This will give you a pool of 91 IP addresses to assign to machines within your network. You can always increase this later if needed.
		- You can add multiple IP pools.
	
	![New Isolated Network Pools](./assets/networks_new_type_isolated_pools.png)

1. When you're done, click **Next**.

1. In the *DNS* page, enter DNS information if possible then click **Next**.

	![New Isolated Network DNS](./assets/networks_new_type_isolated_dns.png)

1. If a *Segment Profile Template* is required, choose the template, and click **Next**.

1. Verify Details and click **Finish**.