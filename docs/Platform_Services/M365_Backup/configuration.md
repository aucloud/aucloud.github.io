---
title: Configuration of Microsoft M365 Service Account
description: Configuration of Microsoft M365 Service Account
tags:
 - M365
 - Backup
 - Veeam
---

## Information on how to configure your M365 service account for AUCloud's M365 Backup as a Service

This guide outlines the steps required to configure and implement your Microsoft 365 Backup with AUCloud
using the modern authentication method. You will be allocated a Customer Success Manager (CSM) who
will assist you with the on-boarding process, provide advice and act as a conduit to deeper technical support
when required.

## Prerequisites

- Customers must have a Microsoft Office 365 account that has an active subscription.
- The Microsoft Office 365 account must have permission to manage applications in Azure Active
Directory (Azure AD). Any of the following Azure AD roles include the required permissions:
   - [Application administrator](https://docs.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#application-administrator)
   - [Application developer](https://docs.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#application-developer)
   - [Cloud application administrator](https://docs.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#cloud-application-administrator)

- Completion of the [Set up a tenant](https://docs.microsoft.com/en-us/azure/active-directory/develop/quickstart-create-new-tenant) quick start.
- AUCloud provided certificate (public key) to be used in application registration.
- **Create a backup service account** in Azure AD with Global Reader, Exchange Administrator, Sharepoint Administrator and Teams [administrator rights](https://learn.microsoft.com/en-us/exchange/client-developer/exchange-web-services/impersonation-and-ews-in-exchange)

## Azure AD Application permissions

### Register an application

1. In the Microsoft Office 365 Admin Centre, navigate to **Azure Active Directory**.
1. Under **Manage**, select **App registrations** > **New registration**.
1. Enter a display **Name** and select the **Accounts in this organizational directory
only**.

    !!! note

        The Redirect URI can be left blank.

1. Select **Register** to complete the initial app
registration.

  ![Register an Application](./assets/register_an_application.svg)

### Configure Application permissions

Select the newly registered application, select API permissions, and add permissions for:

- Microsoft Graph
- Office 365 Exchange Online
- SharePoint

    !!! note

        To search for other API, select **APIs my organisation uses**.

![API Permissions](./assets/api_permissions.png)

For each API e.g., Microsoft graph, add the appropriate delegated (restore) and application (backup) type permissions as per below:

![Request API Permissions](./assets/request_api_permission.png)
  
1. [**Delegated (restore) permissions**](./azureAD_application_permission_requirements.md#permissions-for-restore)

    !!! note

        All listed permissions are required for data restore using Veeam Explorers

1. [**Application (backup) permissions**](./azureAD_application_permission_requirements.md#permissions-for-backup)

1. After all APIs are added, you will need to **grant admin consent**

   ![Grant Admin Consent](./assets/grant_admin_consent.png)

### Add a Certificate (public key)

1. Select **Certificates & secrets > Certificates**.
1. Select **Upload certificate**.
1. Browse for the certificate to be uploaded.

    !!! note

        AUCloud will provide this certificate.

1. Enter a description.
1. Select **Add**.

  ![Add a Certificate](./assets/add_a_certificate.png)

### Join secure meeting with AUCloud

A joint session with the AUCloud technical team is required for you to enter the necessary credentials to finalise the configuration of the Veeam Backup for Office 365 application. This can be organised via Webex, Zoom, Teams chat or face-to-face meeting. Please advise your CSM on what suits best.

- Username
- Application ID

  ![Edit Organisation](./assets/edit_organisation.png)

### Restore Portal Access Requirements

To access the Veeam restore portal, you must add an Enterprise Application in Azure AD

#### Prerequisite

For the below, you need to use a Service Account with enough rights to perform an Enterprise Application install on Azure AD. In order to perform these steps, we will need the AzureAD PowerShell cmdlet. To install this, open PowerShell and run the following command:

```
Install-Module -Name AzureAD
```

    !!! note

        You may be prompted to install and import the **NuGet** provider. Please press Y to continue through this.

The next command will connect your PowerShell to AzureAD. Use credentials with admin rights to perform an Enterprise Application install:

```
Connect-AzureAD 
```

This will open a traditional username and password Microsoft popup:
Please enter your service account username and password in this popup including MFA if prompted.

We should see something like this if everything worked smoothly:

![Powershell](./assets/powershell.svg)

And the final step which brings everything together:

```
New-AzureADServicePrincipal -AppId "33831092-5ae1-4b51-9eb2-a90033803540"
```

If everything works as expected, the output should show something similar to this:

![Powershell](./assets/powershell2.svg)

    !!! note

        If you receive an error that the application ID already exists, you must delete the pre-existing Enterprise Application ‘Veeam VBO’ from your Azure AD and then repeat the above command.


**Last-Step - Give permission to the new Application on Azure AD**

- Under Enterprise Applications, remove the enterprise applications filter, and order them by date.

You should see a new Veeam VBO application (the name of the Restore Portal).

![Veeam VBO](./assets/veeam_vbo.png)

On the Enterprise Application, go to Permissions, and press **Grant admin consent**

![Veeam Permissions](./assets/veeam_permissions.png)

That process will ask us again for an authorized account.

We should see something like this:

![Veeam Permissions](./assets/veeam_permissions_2.png)

Configuration is completed. You can then proceed to test connectivity to the Restore Portal.

[Restore Portal URLs](../reference_urls.md#veeam-m365-backup-portal)
