---
title: Known limitations
description: Known limitations with AUCloud's Kubernetes Service.
---

## Overview
This page describes the known limitations currently of AUCloud's Kubernetes service.
If these issues have a significant impact on your experience please let your CSM know to enhance in prioritisation of fixes, as appropriate.


### Load balancers can only use external IP addresses.
The default deployment of Kubernetes Load Balancers behaves in the following manner:

1. A DNAT is formed from an IP address in the external (public) IP allocation, to a privately addressed virtual service. It must be an external IP address with the default configuration.
2. The virtual service then is load balanced, as appropriate, back to the k8s nodes.

#### Mitigations / alternatives

1. Use firewalls to *effectively* block external traffic, yet still use an external IP.
   - With a *default deny* rule always enforced, you can allow traffic to the external IP provisioned for a Load Balanced service *only* for your internal IP range.
   - This increases risks with the firewall configuration, however, will work.
2. **Unsupported currently** Under VCD 10.4 disable two-arm load balancers
    - See [this blog](https://vmwire.com/2022/11/21/container-service-extension-with-an-one-arm-load-balancer/)
    - See the  [VMware external cloud provider for VCD](https://github.com/vmware/cloud-provider-for-cloud-director#virtual-service-shared-ip-vcd--1040) `README.md`



### Ephemeral VM (provisioning VM) is not deleted and the cluster is 'available'
The Kubernetes services uses a ephemeral vApp to orchestrate deployment of each of the Kubernetes cluster nodes.
If the Ephemeral VAPP continues to exist once the cluster is deployed, and the VCD UI is showing it is 'available' this signals there may be issues in completing cluster deployment.

#### Recommended actions
1. Validate all nodes have been admitted to the cluster with `kubectl get nodes`
   1. If the cluster nodes are not all admitted delete the cluster.
2. Delete the ephemeral vApp


### Kubernetes cluster is not being deleted when requested

In order to ensure that VCD resources are cleaned successfully any service that is of type `LoadBalancer` will block cluster deletion.
This includes 'force deletion' actions.

!!! warning "Do not manually delete the vApp"
    Manually deleting the vApp within the VDC is highly likely to leave 'stale' NAT rules; virtual services and IP Pools within your tenancy.
    Only delete the vApp manually as an absolute last resort.

#### Recommended actions

1. Check if any services are of type `LoadBalancer` by `kubectl get svc -A`
2. Delete all services of this type explicitly
3. Cluster deletion should resume automatically once services are deleted. 
