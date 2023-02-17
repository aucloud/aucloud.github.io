---
title: Compute
description: AUCloud Compute Solutions offers standard VM sizes, operating systems, and customizable virtual machines for VMware Cloud Director deployment. Connect to the SDDC using a dedicated connection and manage virtual machines through the API with PowerCLI and Terraform. Easily create, move, and manage vApps, customize settings, and work with OVF files
---

## Compute Solutions:

[**Catalog:**](./Catalogs/how_to_create_a_catalog) Use our public catalog to find standard VM sizes and operating systems for your VMware Cloud Director deployment. You can also create your own catalogs with specific applications or gold images for faster VM deployment.

**Gateway**: The NSX-V edge gateway connects an organization's virtual data center (VDC) network with an external network.

**VDC Networks**: A VDC network allows VMs to communicate and access external networks. It can also have multiple networks and vApp networks for added control. An organization VDC network enables VMs to communicate and access external networks.

**SDDC**: Access the SDDC from the ESG using a dedicated connection. It has a firewall and NSX-T Logical Load-Balancer for high availability and traffic distribution.

[**Using the API:**](./Using_the_API/establishing_a_connection_to_aucloud_with_powercli/) The API allows you to connect to the AUCloud platform via PowerCLI and to use Terraform against AUCloud's implementation of VMware Cloud Director 

**Working with Virtual Machines**:

- [create a vApp](./Working_with_Virtual_Machines/how_to_create_a_vapp) or [Virtual Machine](./Working_with_Virtual_Machines/how_to_create_an_empty_vm)
- [move apps](./Working_with_Virtual_Machines/hot_to_migrate_vapps_between_virtual_data_centres)
- [increase or add HDD](./Working_with_Virtual_Machines/how_to_increase_an_hdd_or_add_hdd_to_a_vm)
- [customize settings](./Working_with_Virtual_Machines/how_to_perform_guest_customisation)
- [resize disk](./Working_with_Virtual_Machines/how_to_resize_vm_disk)
- [view and update VM settings](./Working_with_Virtual_Machines/how_to_view_and_update_virtual_machine_settings)
- [view storage profile usage](./Working_with_Virtual_Machines/how_to_view_storage_profile_usage)
- [work with OVF files](./Working_with_Virtual_Machines/how_to_vmtemplate_media_using_ovf_tool)
