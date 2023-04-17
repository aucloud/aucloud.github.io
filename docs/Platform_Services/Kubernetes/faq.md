---
title: Frequently Asked Questions
description: Frequently asked questions on AUCloud's Kubernetes Service
---


### How much does my Kubernetes cluster cost?
The AUCloud Kubernetes services charges based on the underlying costs of the VMs provisioned to support the cluster.
No extra / hidden costs exist.

!!! note "Public IP consumption"
   Users should budget for extra public IP addresses when standing up new clusters with internet facing services.

### What IP should I use for the Kubernetes API?

The Kubernetes service will create a 'virtual service' to load balance across the control plane member at the IP address provided. The two choices are:

1. A public address within your allocated IP range for the VDC which is *not* currently being used for a NAT. 
   1. You will need to create firewall rules to expose the API.
2. A RFC 1918 address, within a 'network' created behind the VDC edge gateway.
   1. This will allow private access from within the tenancy; or via an IPSec tunnel to the edge gateway.

### Why the Load Balancer not provisioning?
The most likely reason for a Load Balancer failing to provision is insufficient free public IPs.
By *Default* each load balanced service uses a separate public IP by default.
A free public IP is defined by an IP with no existing NAT rule applied to it, or virtual service bound to it.



