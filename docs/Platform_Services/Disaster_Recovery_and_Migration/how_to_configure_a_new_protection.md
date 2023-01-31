---
title: How to configure a new protection
description: How to configure a new protection
---

## Overview

You can configure for a Virtual Machine or a Virtual Application to be protected to a destination site. After successful failover of the migration to the destination site, you can power on the source virtual machine on the destination site.

## Configure a New Protection

1. Decide that type of replication you want to perform and unfold the **Incoming Replications** and **Outgoing Replications** menus.

    ![Replication selection](./assets/Replicationselections.jpg)

1. Click **New Protection**.

    ![New Migration](./assets/NewMigrations.jpg)

1. Follow the prompts of the **New Replication** wizard and select the **Source Location**.

    ![Source site](./assets/Sourcesites.jpg)

1. Select the **Destination VDC** and **Storage Policy.**

    ![destination VDC and Storage policy](./assets/destinationVDCandStoragepolicys.jpg)

1. On the **Protection Settings** page, you must set:

    - Target Recovery Point Objective (RPO).
    - Retention policy for point in time instances.
    - Enable or disable quiescing. 
   
    !!! note
    
   	    Quiescing cannot be enabled when back-up is also enabled, [VMware KB81059](https://kb.vmware.com/s/article/81059)

    ![Protection settings](./assets/Protectionsettings.jpg)
  
1. On the **Ready to complete** page, review the replication settings, and click **Finish**.

    ![Ready to complete](./assets/readytocomplete.png)
