---
title: VMware Cloud Director Availability Replication Policies
description: VMware Cloud Director Availability Replication Policies
tags:
    - vmware-cloud-director
    - vmware-cloud-director-availability
---

## Overview

Replication policies control replication attributes of VMware Cloud Director organisation from the VMware Cloud Director Availability solution perspective.  

## Replication Policies

1. Replication policies enforce a list of replication attributes:

    - If an organization can be used as a replication source.
    - If an organization can be used as a replication destination.
    - Minimum Recovery Point Objective (RPO) for an organization.
    - Maximum number of retained snapshots per single virtual machine replication within an organization.
    - Maximum number of virtual machine replications that can be created within an organization.

1. The VMware Cloud Director Availability solution provides an editable, default replication policy that you cannot delete. All organizations that are not associated with a custom replication policy, are assigned to the default policy.

    The default replication policy is set to specific replication attributes:

    - Outgoing replications are not allowed.
    - Incoming replications are not allowed.
    - Minimum RPO is set to 15 minutes.
    - Maximum number retained snapshots per virtual machine replication are set to 24.
    - Maximum number of virtual machine replications is set to 0.

1. When you create a replication, the **New Replication** wizard validates the following settings:

    - If the source organization allows outgoing replications.
    - If the destination organization allows incoming replications.
    - If the RPO setting of the new replication complies with the policy assigned to the destination organization. To comply, the RPO must be higher than or equal to the minimum RPO of the policy that is assigned to the destination organization.
    - If the number of retained snapshots per replication of the new replication complies with the policy that is assigned to the destination organizations.
    - If the total number of allowed VM replications on the destination organization is not exceeded.

If there are any violations, the system rejects the creation of the new replication.

## Using Replication Seeds

For each new replication that you configure, an initial full synchronisation operation is performed. During this operation, VMware Cloud Director Availability copies the whole data from the source vApp or VM to a datastore in the target site. Use replication seeds to reduce the network traffic and the time that is required for the initial full synchronization of a replication.

Due to the size of the vApp or VM or to the network bandwidth, an initial full synchronisation might take a long time. To reduce the initial synchronisation time, you copy the source vApp or VM to the target site by using removable media, failover of a previous replication, or other means of data transfer. Then, in the target site, configure a replication that uses the vApp or VM copy as a replication seed.

When a replication uses a seed vApp or VM, VMware Cloud Director Availability does not copy the whole source vApp or VM data to the target site. Instead, VMware Cloud Director Availability copies only the different data blocks between the source vApp or VM and the seed and reuses the seed data in the target site as a basis for replication.

!!! note

    VMware Cloud Director Availability stores the replication data in the target site without creating copies of the seed vApp or VM. You can use a seed vApp or VM to configure only one replication.

1. Use a VM as a Replication Seed  
    To use a VM as a seed, in the target site, select a VM that has an identical disk configuration with the seed VM. The size and number of disks, and their assignment to disk controllers and bus nodes must match the replication source and the seed VM.

    For example, if a replication source VM has two 4 GB disks, one of them assigned to SCSI controller 0 at bus number 0, the second one to SCSI controller 1 at bus number 2. Your seed VM must have the same hardware configuration - two 4 GB disks, at SCSI 0:0 and at SCSI 1:2.

1. Use a vApp as a Replication Seed
    To use a vApp as a seed, in the target site, select a vApp that has an identical VM set with the seed vApp. The VMs in the seed vApp must have a matching name to the VMs in the source site vApp. Each VM in the seed vApp, must meet the prerequisites to be a seed VM of the VM with the same name in the source site.

    After you start a replication, in the VMware Cloud Director inventory, the seed vApp is empty and you can manually copy the vApp settings and metadata that are not replicated from the source site. The seed vApp remains available as an empty copy and you can remove it at your discretion.

1. Create a Replication Seed
    Use one of the following methods to create a seed vApp or VM in the target site.

    - Offline data transfer: Export the VM as an OVF package and a Cloud service administrator imports the package to your cloud organization.
    - Clone a VM: Create a seed vApp or VM by cloning the vApp or VM from the target site.VMware Cloud Director Availability calculates the checksum and exchanges the different blocks from the replication source to the seed vApp or VM.
    - Failover data from a previous replication: Set up a replication, fail over to the target site and continue using the on-premises workload. At a later point, you protect it in the target site by using the VM that you failed over earlier as a seed.
    - Copy over the network: Copy a source VM to the cloud organization and transfer the source data to the target site by using other means than VMware Cloud Director Availability.  

## Export a Virtual Machine or a vApp to a Removable Media

To use a replication seed for configuring a replication, you must export a virtual machine to removable media and provide it to AUCyber.

1. Power off the virtual machine on the protected side by using the vSphere Client

1. Export a virtual machine form vCenter Server to a removable media.

    ``` bash
    ovftool 'vi://root@VC_IP/Datacenter_Name/vm/VM_FQDN' VM_FQDN.ova
    ```

    After the process finishes, you can power on the virtual machine

1. (Optional) Export a vApp from VMware Cloud Director to a removable media.

    ``` bash
    ovftool 'vcloud://ORG_ADMIN@VCLOUD_DIRECTOR_IP:443?org=ORG_NAME&vdc=VDC_NAME&vapp=VAPP_NAME' VAPP_NAME.ova
    ```

1. Provide the removable media containing the exported files to AUCyber.

## Configure a Replication by Using a Replication Seed

When creating a new incoming or outgoing replication, you can use a vApp or VM as a seed to avoid transferring large amounts of data over the network during the initial full synchronisation.

Before starting a replication, in the target site you must power off the seed VMs, because they are unregistered from the target VMware Cloud Director and vCenter Server inventories. If the new replication fails, the VM files and disks remain on the datastore. For the VM to appear in the inventories, locate the .vmx file of the VM, manually import the VM in the vCenter Server inventory, and import it to the VMware Cloud Director inventory.

1. In a Web browser, navigate to the vSphere Client and log in as an administrator.

1. From the vSphere client **Menu**, select **VMs and Templates.**

1. In the **Navigator** pane, right-click the virtual machine and **select VMware Cloud Director Availability > Configure Protection**. The **New Outgoing Replication** wizard opens

1. On the **vCenter VMs** page, select the virtual machines that you want to protect and click Next.

1. On the **Target VDC** page, select the target virtual data centre to which you want to replicate the virtual machines, and click **Next**.

1. On the **Seed VM** page, select the vApp or VM, under **Seed** select the seed you want to use, and click **Next**.

    !!! note

        If you remove a disk from a replication source virtual machine, the seed disk is not deleted from the datastore in the target site

1. On the Protection Settings page, select the settings for the replication, and click **Next**.
	
	| Option                                       | Description |
	| ---                                          | ---         |
	| Target recovery point objective (RPO)        | Use the slider or click the time intervals to set the acceptable period for which data can be lost in the case of a site failure. The available RPO range is from 5 minutes to 24 hours. |
	| Storage Policy                               | From the Storage policy drop-down menu, select the storage policy for placing the recovered VMs and for the replicated data before the recovery. For seed VMs, VMware Cloud Availability Replicator uses the storage policy of the seed VM. |
	| Retention policy for point in time instances | To preserve multiple distinct replication instances (snapshots) to which VMs can be recovered, select the option, select the number of replication instances to keep, and select the preservation period.<p></p>The number of preserved replication instances depends on the configured retention policy and requires that the RPO period is short enough for the replication instances to be created. For example, if you select to preserve four replication instances per day, the RPO period must not exceed six hours, to allow for the retention of four replication instances in 24 hours. |
	| Enable quiesce                               | Select the quiescing method for the guest OS of the source VM.<p></p>**Note:** Quiescing is available only for VMs that support quiescing. |
	| Compress replication traffic                 | Select to compress the replication data that is transferred through the network and to reduce the network traffic. However, compressing and decompressing data requires more CPU resources on both the source site and the server that manages the target datastore. |
  
1. On the **Scheduling** page, select when to start the replication and click **Next.**

1. On the **Ready to Complete** page, verify that the configuration settings are correct and click **Finish**.