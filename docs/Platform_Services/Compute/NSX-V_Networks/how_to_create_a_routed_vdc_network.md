---
title: How to create a routed VDC network
description: How to create a routed VDC network
tags:
    - vmware-cloud-director
    - networking
---

### Overview

An organisation virtual data centre network enables its virtual machines (VMs) to communicate with each other or to provide access to external networks. A single VDC can have multiple networks.

There are two network flavours, isolated and routed:

- An isolated (internally connected) network is one that only VMs within the VDC can connect to. Creation of isolated networks is described in [How to create an isolated VDC network](./how_to_create_an_isolated_vdc_network.md).
- A routed network (externally connected) provides access to machines and networks outside the VDC via the edge gateway. You can have up to nine usable routed networks per VDC. This guide describes how to create a routed VDC network.

### Creating a routed VDC network

1. In the VMware Cloud Director *Virtual Datacentres dashboard*, select the VDC in which you want to create the network.

1. In the left navigation panel, select **Networks**.

1. Click **New**.

    ![New Network](./assets/new_network.png)

1. In the *Network Type* page of the *New Organization VDC Network* dialog box, select **Routed** then click **Next**.

    ![New Routed Network](./assets/new_routed_network.png)

1. On the *Edge Connection* page, select the edge gateway that you want your network to connect to then click **Next**.

    ![New Routed Edge](./assets/new_routed_edge_connection.png)

1. In the *General* page, enter a **Name** and **Description** for the network.

1. In the **Gateway CIDR** field, the gateway address for the network.

1. Select the **Shared** option to make the network available to other VDCs within the same region.

    ![New Routed General](./assets/new_routed_general.png)

1. Click **Next**.

1. In the **Static IP Pools** field, enter a range of addresses to be consumed by the VMs connecting to the network, then click **Add**.

    As an example, if you give the gateway address as `192.168.1.1/24`, you may then want to create a **Static IP Pool** of `192.168.1.10-192.168.1.100`. This will give you a pool of 91 IP addresses to assign to machines within your network. You can always increase this later if needed.

    You can add multiple IP pools.

    ![New Routed IP Pools](./assets/new_routed_ip_pools.png)

1. In the *DNS* page, enter DNS information if possible then click **Next**.

    ![New Routed DNS](./assets/new_routed_dns.png)

1. On the *Ready to Complete* page, review your selections then click **Finish**.

### Next steps

Now you've created your network to connect your VDC with the outside world, may want to configure your edge gateway to control what traffic is allowed into and out of your VDC. You may also want to start building some VMs. For quick guide on how to do this, see [How to create an empty VM](../Working_with_Virtual_Machines/how_to_create_an_empty_vm.md).
