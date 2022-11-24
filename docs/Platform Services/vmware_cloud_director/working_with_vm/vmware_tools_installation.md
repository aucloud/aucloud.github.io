---
title: VMWare Tools Installation
---

VMware provide tools which should be installed into any virtual machines running on vCloud Director. The tools provide additional features such as automated customisation as well as improved performance by implementing optimised drivers such as storage, network and display.

### Prerequisites

-   The VM must be powered on
-   Guest OS has been installed on the VM

### Windows

1. Browse to the virtual machine within the vApp.

1. Identify the VM that requires VMware tools to be installed and click Actions > Power > On.

1. Once powered on, click the **Actions** drop down and select **Install VMware tools**.

1. Open the web console of the VM by clicking on **Actions - VM Console - Launch Web Console**   
    If the grid view is enabled, click on the list bar and select **VM Console > Launch Web Console** 

1. Login to the operating system and follow the wizard to install the tools.

1. Once the installation completed, eject the VMware Tools installer by right clicking the CD-ROM drive and select **Eject**

1. Restart the guest OS to ensure all the necessary features are updated

### Linux

There are two methods of installing the VMware tools for Linux, from within vCloud Director using the method above or installing the open-vm-tools, which are now supported by VMware. Not all distributions provide support for the open-vm-tools however the following well known distributions do:

-   Centos 5/6/7
-   Redhat 5/6/7
-   Ubuntu 12.04/14.04

Installing the VMware tools via vCloud Director requires modules to be built against the running kernel. If the kernel is updated the administrator needs to run the VMWare tools setup again to recompile the modules.

#### Redhat/Centos 5/6/7

The open-vm-tools is available via the epel repository.

1. Add epel repository.

    `sudo yum install epel-release`

    If the command above fails then you can run the following commands dependent on the version you are running:

    **Redhat/Centos 5**

    `wget http://dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm sudo rpm -Uvh epel-release-5*.rpm`

    **Redhat/Centos 6**

    `wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm sudo rpm -Uvh epel-release-6*.rpm`
  
    **Redhat/Centos 7**

    `wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm sudo rpm -Uvh epel-release-7*.rpm`
  
1. Install open-vm-tools

1. Once the installation completed, unmount CD-ROM (if any attached)

1. Restart the guest OS to ensure all the necessary features are updated

#### Ubuntu

1. Install open-vm-tools

    `sudo apt-get install open-vm-tools`

1. Once the installation completed, unmount CD-ROM (if any attached)

1. Restart the guest OS to ensure all the necessary features are updated

**Warning:** It is recommended to unmount the VMware Tools Installer as soon as the installation completed. As failing to unmount VMware Tools installer , it will result failure in migrating the VM which is initiated by vSphere DRS to balance compute capacity on our backend Infrastructure.