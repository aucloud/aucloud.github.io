---
title: NSX-V to NSX-T Migration Overview
description: NSX-V to NSX-T Migration Overview
tags:
    - vmware-cloud-director
---

## Overview

As part of a refresh of the various infrastructure services that underpin the AUCloud platform, networking services will be migrated from NSX-V to NSX-T.

[NSX-T](https://www.vmware.com/content/dam/digitalmarketing/vmware/en/pdf/products/nsx/vmware-nsx-datasheet.pdf) is VMware's next generation Software Defined Networking (SDN) solution, built from the ground up as an improvement on NSX-V. As such, NSX-T is an entirely new SDN platform, better suited to the requirements of large scale cloud networks. NSX-T also provides the ability to offer additional services, such as Kubernetes Cluster Management, as well as continual support and updates from VMware.

As it was built from the ground up as a new platform, NSX-T changes both the user interface and operation of several configuration options in VMware Cloud Director (vCD).

To assist with the migration to NSX-T, this section provides information on each of these changes, as well as where to find additional details.

## Next Steps

With the migration of networking services to NSX-T, there will be noticeable changes to the VMWare Cloud Director (vCD) user interface and API, as well as changes to the provided load balancing functionality. The manner in which the Edge Gateway operates will also change.

To prepare for the migration, consult the changes to each specific service using the links below:

- [Edge Gateway](./edge_gateway.md)
- [Firewall Rules](./firewall_rules.md)
- [NAT](./nat.md)
- [VPN](./VPN.md)
- [Load Balancer](./load_balancer.md)
