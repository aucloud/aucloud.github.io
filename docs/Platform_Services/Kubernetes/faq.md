---
title: Frequently Asked Questions
description: Frequently asked questions on AUCloud's Kubernetes Service
---


## What IP should I use for the Kubernetes API?
The Kubernetes service will create a 'virtual service' to load balance across the control plane member at the IP address provided. The two choices are:

1. A public address within your allocated IP range for the VDC which is *not* currently being used for a NAT. 
   1. You will need to create firewall rules to expose the API.
2. A RFC 1918 address, within a 'network' created behind the VDC edge gateway.
   1. This will allow private access from within the tenancy; or via an IPSec tunnel to the edge gateway.
