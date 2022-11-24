---
title: How to view and update virtual machine settings
---

### Viewing and updating VM settings

After you've deployed a virtual machine (VM), you can view and update its configuration.

1. In the vCloud Director _Virtual Datacentres_ dashboard, select the VDC where the vApp that contains the VM is located.

1. In the left navigation panel, click **vApps**.

    ![vApp Navigation](./assets/nav_vapp.png)

1. In the card for the vApp that contains the VM, click **Details**.

    ![vApp Navigation](./assets/vapp_details.png)

1. Within the Virtual Machines section, click the name of the VM for which you want to view configuration information.

1. Expand each section to view the settings for the VM and change them if required.

1. When you're done, click **Save** to save any changes you've made, or **Discard Changes** to close without saving.  
 

### General

View and changes properties such as the VM/host name, OS type and version. You can also see if VMware Tools is installed on the VM and change the storage policy for the VM.

![vApp Navigation](./assets/vm_details.png)

## Hardware

On the **Hardware** tab, you can:

-   See and change the number of virtual CPUs and the amount of RAM associated with the VM.
-   Specify the number of cores per socket and number of vCPUs. You can use this for software applications that have per-socket licensing. First set the number of vCPUs you require, and then set the number of cores per socket.
-   Run virtualisation servers as a VM. For example, run a Windows 2008 or 2012 server with Hyper-V, or a VMware ESX host. Select the **Expose hardware-assisted CPU virtualization** check box in these cases.
-    Add or remove hard disks and network adapters.

## Guest OS Customisation

By default, a password is randomly generated and assigned when the VM is first booted. You can use this tab to determine the login password, or to specify the password that will be assigned to the administrator/root user for the VM.

The password must meet the OS password complexity requirements (at least eight characters long and including upper and lower case letters and numbers).

For guest customisation to work, VMware Tools must be installed and running in the VM.

For Windows VMs, there is an option for guest customisation to change the SID of the operating system. Bear in mind that changing the SID can corrupt VMs running applications, such as Active Directory, that rely on a known SID.

