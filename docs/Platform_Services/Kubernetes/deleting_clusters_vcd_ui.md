---
title: Deleting Kubernetes clusters using VCD
description: Deleting Kubernetes clusters using VCD
---

## Overview
This document is aimed to provide AUCyber tenancy administrators an overview on how to delete a kubernetes cluster within VMware Cloud Director.

Following the steps outlined in this document will delete a Kubernetes cluster.

## Prerequisites
Before a cluster is able to be deleted from the VCD WebUI, all *load balancers* and *Persistent Volumes (PV)* **must** be manually removed/detached from the cluster via the `Kube Config`.

## Deleting a cluster

1. From a VCD tenancy, Select **More** > **Kubernetes Container Clusters**.

    ![vcd main](./assets/01-vcd-main.png)

2. Select the radio select for the cluster you wish to delete.  Click the **Delete** button to start the upgrade process.

    ![vcd kubernetes](./assets/delete_cluster_2a.png)
	
	This can also be done by clicking on the link of the cluster's name and viewing the status page as shown below:
	
	![vcd kubernetes](./assets/delete_cluster_2b.png)

3. The **Delete Cluster** menu will show relevant warnings about the deletion.  Review these and click **Delete**.

    ![place holder](./assets/delete_cluster_3.png)

    !!! warning "Force Delete"

        **Force Delete** should only be used on any cluster in an incomplete or unremovable state.  This will remove associated resources, ie VMs, Persistent Volumes (Shared Disks), Load balancer(s).  However, manually checking these resources and removing manually maybe required.

4. There will be confirmation page that the deletion request was acknowledged.  Click **Close**.

    ![place holder](./assets/delete_cluster_4.png)

5. The Kubernetes menu will show the status of the cluster under as **Deleting**.

	![place holder](./assets/delete_cluster_5.png)

6. Under the VCD **Recent Tasks** you will notice a Virtual Machine with the name *EPHEMERAL_TEMP_VM(...)* creating and powering on.  This VM will orchestrate the deletion of the Kubernetes cluster.  Please allow up to an hour, depending on the size of the cluster, for this process to complete.

	![place holder](./assets/delete_cluster_6.png)

7. The deletion is completed once the K8 nodes and Ephemeral VM have all been deleted.

	![place holder](./assets/delete_cluster_7.png)