---
title: How to create a vApp
---

## Overview

vCloud Director uses vApps to make virtual machine (VM) creation and management easy and flexible. vApps are essentially containers for VMs and can be used in many ways. One of the most common uses of a vApp is to group similar VMs together for easy management. Or you can put VMs that form a multi-tier application into the same vApp for greater control. Up to 128 vApps can be created within a virtual data centre (VDC) and intelligently networked to create complex architectures that can be managed easily.

In this guide we'll look at how to create a vApp from scratch.

1. In the vCloud Director _Virtual Datacenters_ dashboard, select the VDC in which you want to create the vApp.

1. In the left navigation panel, select **vApps** to view a list of vApps within the VDC.

    ![Nav VApp](./assets/nav_vapp.png)

1. Click **New vApp**.

    ![New VApp](./assets/new_vapp.png)

1. In the _New vApp_ dialog box, enter a **Name** and **Description** for your vApp. The name should be something that will easily identify it if you're building a large environment with multiple vApps.

    ![New VApp details](./assets/new_vapp_details.png) 

1. You can now click **Add Virtual Machine** to populate the vApp with VMs. There are several ways to create a VM:

    -   From an existing template see [How to create a VM from a template](todo).
    -   Catalog creation is covered in [How to create a catalog](todo).
    -   From scratch, without using a template see [How to create an empty VM](todo).

1. When you've finished creating your vApp, click **Create**.

1. When your vApp has finished deploying, in the card for the vApp, select **Actions, Power** then **Power On** to power it on.