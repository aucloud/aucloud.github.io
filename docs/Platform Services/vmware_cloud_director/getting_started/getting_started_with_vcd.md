---
title: Getting Started with vCloud Director
---

### Overview

This guide leads you through the three basic steps for using vCloud Director to quickly build a simple virtual machine (VM) and connect it to the internet.

The three steps covered in this guide are:

1. Create a network (to move requests around your VMs).
1. Configure the edge gateway (in this guide we focus on the firewall and NAT configuration).
1. Create a virtual machine.
1. If you follow these steps, you can have a VM up and running with a connection to the internet in about 20 to 25 minutes.

### Create a network

Before you can start building VMs in your VDC, you need to create the network that connects the VMs to each other and the outside world.

First, you need to create a network that can connect to external networks outside your VDC (including the internet). This is called an external routed network. You can find more information about routed networks in [How to create a routed VDC network](../networks/how_to_create_a_routed_vdc_network.md).

1. Log in to the AUCloud Portal.

    For more detailed instructions, see the [Getting Started Guide](../../../Platform%20Overview/portal/getting_started.md) for the AUCloud Portal

1. Select your account.

1. In the Portal navigation panel, expand vCloud and then select the compute service in which you want to create your VM.
