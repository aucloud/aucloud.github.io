---
title: Updating RedHat Linux in AUCloud
description: Documentation on how to update RedHat Enterprise Linux
---

## Overview  

To receive RedHat Enterprise Linux (RHEL) updates while on AUCloud VCD infrastructure you will need to configure your guest OS with a client configuration RPM entitlement.  
This will install AUClouds YUM repositories and copy entitlement certificats to your desired RHEL guest OS.  

!!! note "RedHat Enterprise Linux available versions"
    Only RedHat Enterprise Linux 8 and 9 are avilable for update distribution. Further packages or operating systems please contact your CSM or raise a case via the portal.

!!! note "Region avilablity"
    AUClouds RedHat Update Infrastructure (RHUI) is only available via AUClouds tenant public IP address'. Connections are blocked for all external address'.

## Installing RHEL entitlements

Depending on your version of RHEL, download the appropriate version to the desired guest OS ie `/tmp`  

- ![RedHat Enterprise Linux 8](./assets/RHE8-2023-06-26-1.0-1.noarch.rpm)
- ![RedHat Enterprise Linux 9](./assets/RHE9-2023-06-26-1.0-1.noarch.rpm)

To install run the following appending the version

``` bash
#Example RHE8

sudo rpm -i /tmp/RHE8-2023-06-26-1.0-1.noarch.rpm

#Example RHE9
sudo rpm -i /tmp/RHE9-2023-06-26-1.0-1.noarch.rpm

```

Uninstall

``` bash
#Example RHE8

sudo rpm -e RHE8-2023-06-26-1.0-1.noarch

#Example RHE9
sudo rpm -e RHE9-2023-06-26-1.0-1.noarch

```

!!! note "Upgrading entitlements"
    To upgrade simply uninstall using the above commands then install the new RPM.