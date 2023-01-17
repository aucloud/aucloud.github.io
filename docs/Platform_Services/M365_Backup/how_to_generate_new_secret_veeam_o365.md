---
title: How to generate a new secret for Veeam Backup for Office 365
description: How to generate a new secret for Veeam Backup for Office 365
---

### Generating M365 Secrets

If you need to generate a new secret for your Veeam Backup for Office 365 account, simply follow the steps below:

1. Login to **Office.com** using your admin account and navigate to the **Admin Center**.

    ![New Secret](./assets/secret1.png)

1. Within the Admin Center, Click on **Show all**

    ![New Secret](./assets/secret2.png)

1. Click on **Azure Active Directory**
  
    ![New Secret](./assets/secret3.png)

1. Within Azure Active Directory admin centre, click on **Azure Active Directory**
  
    ![New Secret](./assets/secret4.png)

1. Click on **App registrations**

    ![New Secret](./assets/secret5.png)

1. Click on **view all applications in the directory**

    ![New Secret](./assets/secret6.png)

1. Click on the **Veeam Office 365 backup app**

    ![New Secret](./assets/secret7.png)

1. Inside the app, click on **Certificates and Secrets**

    ![New Secret](./assets/secret8.png)

1. Click on “**\+ new client secret”**. Once the new one is created, remove the expired one. The value is the new secret required to reconfigure the customer organisation.

    ![New Secret](./assets/secret9.png)
