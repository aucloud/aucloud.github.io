---
title: How to create a catalog
description: How to create a catalog
tags:
    - vmware-cloud-director
---

## Overview

AUCyber provides a public catalog for you to use that contains standard virtual machine (VM) sizes and operating systems. The public catalog is a good place to start when you first deploy VMs into VMware Cloud Director. However, you may want to create your own catalogs, containing specific applications or gold images, which you can then use to deploy VMs quickly.

## Create an empty catalog

1. In VMware Cloud Director, click **Libraries** from the top menu bar.

    ![Nav Libraries](./../assets/nav_libraries.png )

1. In the left navigation panel, click **Catalogs**.

    ![Nav Catalog](./../assets/nav_catalog.png)  

1. To create a new catalog, click **New.**

    ![New Catalog](./../assets/new_catalog.png)

1. In the _Create Catalog_ dialog box, **Name** the catalog and give it a **Description** if needed.

1. To specify a storage policy for the catalog, select the **Pre-provision on specific storage policy** option then select the desired **Storage Policy**. The storage policy is dependent on what is preferred at the time your Org VDC is created. _Contact AUCyber for more information on different storage policies._

    ![Create Catalog](./../assets/create_catalog.png)

1. To finish, click **OK**.

1. To make the catalog visible to others within your organisation, click the ellipsis and select **Share**.

    ![Share Catalog](./../assets/share_catalog.png)  

1. In the _Share with Users and Groups_ dialog box, select:

    - **Share with All Users and Groups** to add everyone in the organisation; or
    - **Share with specific users or groups** to add individual users or groups of users.

    !!! note

        You can give users different access levels: **Read Only**, **Full Control** or **Change**. Change allows users to change permissions._

    ![Share with users and groups](./../assets/share_with_users_and_groups.png)

1. When you have added all the people you want to access the catalog, click **OK**.

1. To finish, click **Save**.

## Populating an empty catalog

There are two ways to populate a catalog:

         a. Upload an OVF package; or

         b. Create a template from an existing vApp

## Uploading an OVF package

1. In the _Libraries_ page, in the left navigation panel, select **vApp Templates**.

    ![New VApp Template](./../assets/nav_vapp_templates.png)  

1. Click **New** to open an OVF upload window.

    ![New VApp Template](./../assets/new_vapp_template.png)

1. In the _Create vApp template from OVF_ dialog box, select the source of the OVF - either enter a **URL** or **Browse** for a local file.

    ![Create VApp Template](./../assets/create_vapp_template.png)  

1. Click **Next** then review the details of the OVF template and then click **Next**.

1. Enter a **Name** and **Description** for the template and from the **Catalog** list, select the catalog in which you want to put the OVF. Click **Next** to continue.

    ![Select VApp Template](./../assets/select_vapp_template_name.png)

1. Review the details of the vApp template and click **Finish** to deploy.

    !!! note

        Depending on template size and network speed, the upload may take some time._

## Create a template from an existing vApp

1. In VMware Cloud Director, click **Datacenters** from the top menu.

    ![Nav Datacentre](./../assets/nav_datacentre.png)  

1. Select the VDC where the vApp is located.

1. In the left navigation panel, click **vApps**.

    ![Nav VApps](./../assets/nav_vapps.png)  

1. In the card for the vApp that you want to add to the catalog, select **Actions** then **Create Template**.

    ![Action Create Template](./../assets/action_create_template.png)

    !!! note

        You can add both running and stopped vApps to the catalog, although it is worth noting that creating a catalog image from a running vApp could affect performance.

1. You can now choose the catalog you want to add the vApp to, give the vApp a new name, assign a storage lease, and define whether vApps deployed using this template are identical or customisable.

    You can also overwrite an existing catalog item. If the catalog you are adding the vApp to is published externally, a warning will appear.

    ![Add to Catalog](./../assets/add_to_catalog.png)

1. To finish, click **OK**.

    A status bar will appear on top with the message: **Please wait**. You can close the window and check the progress by expanding the _Recent Tasks_ section at the bottom of the VMware Cloud Director interface.