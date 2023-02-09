---
title: Firewall Rules
description: NSX-V to NSX-T Firewall Rules
---

## Overview

Firewall Rules in NSX-T function in much the same manner as with NSX-V (e.g. sources are permitted access to various destinations based on protocol (e.g. TCP or UDP) and port number). However how Firewall Rules are displayed and configured differs from that of NSX-V.

To assist with the migration to NSX-T, such differences are presented and compared.

## NSX-V

With NSX-V, Firewall Rules are available from the SERVICES option and can be added, modified, rearranged or deleted on the screen shown below:

![NSX-V Firewall Rules](./assets/nsx_v_edge_gateway2.jpg)

Several options are available for defining the Source or Destination for Firewall Rules, including; IP address, Gateway Interfaces, Virtual Machines, Org VDC Networks, IP Sets and Security Groups.

![NSX-V Firewall Objects](./assets/nsx_v_src_dst_objects.jpg)

Source and Destination protocol (e.g. TCP or UDP) and port are set from the Firewall configuration screen under the Service field. Specific source or destination port numbers can be entered directly:

![NSX-V Firewall Port](./assets/nsx_v_firewall_port.jpg)

## NSX-T

With NSX-T Firewall Rule configuration is available from the Edge Gateway menu, under the Firewall option.

![NSX-T Firewall Rules](./assets/nsx_t_firewall_rules.jpg)

To add or modify Firewall Rules the EDIT RULES option is used.

Options for defining the Source and Destination are limited to IP Sets and Static Groups.

![NSX-T Firewall Objects](./assets/nsx_t_src_dst_object.jpg)

Static Groups can be used to reference an Org VDC Network and will include all virtual machines connected to that Org VDC Network. However there is no option to associate a single virtual machine by itself with a Static Group.

Example Screenshots:

![NSX-T Static Group](./assets/nsxt_static_group_members.jpg)

![NSX-T Static Group VMs](./assets/nsxt_static_group_assoc_vms.jpg)

Source and Destination protocol (e.g. TCP or UDP) and port are set from the firewall configuration screen, under the Applications field.

![NSX-T Firewall Application](./assets/nsx_t_firewall_application.jpg)

VMware provide a large number of pre-defined applications for many well-known protocols and ports, including DNS, HTTP, HTTPS and SSH, among many others.

If the appropriate protocol and port can not be found among those pre-defined, then custom Application Port Profiles must be created. These **cannot** be created directly under firewall configuration, but must be configured by selecting the Application Port Profiles option, under Security:

![NSX-T Application Port Profiles](./assets/nsx_t_application_port_profiles.jpg)

!!! note
        Additional information on custom Application Port Profiles can be found in the [VMware Documentation](https://docs.vmware.com/en/VMware-Cloud-Director/10.4/VMware-Cloud-Director-Tenant-Portal-Guide/GUID-32EC8B59-F042-4891-8A54-23315E565D78.html).

## Next Steps

Familiarise with the updated display and configuration of Firewall Rules.

For additional information on the configuration of firewall rules with NSX-T, consult the [VMware Documentation](https://docs.vmware.com/en/VMware-Cloud-Director/10.4/VMware-Cloud-Director-Tenant-Portal-Guide/GUID-BE02B1A7-9191-4520-A248-D2A7D2CA640E.html).
