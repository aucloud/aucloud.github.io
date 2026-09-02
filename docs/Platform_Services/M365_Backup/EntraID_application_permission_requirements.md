---
title: Entra ID Application Permission Requirements
description: Entra ID Application Permission Requirements
tags: 
    - M365
    - Backup
---

## Permissions for Modern App-Only Authentication

Tables in this section list the permissions required by the Microsoft Entra ID application that AUCyber's M365 Backup service uses with the [modern app-only authentication method](https://helpcenter.veeam.com/docs/vbo365/guide/adding_o365_organizations_sd.html?ver=8).

Restores are performed using the Entra ID application certificate, so every permission listed on this page is of the **Application** type. No delegated permissions are required. Grant the permissions from both tables to the same application.

!!! warning "Exchange Web Services (EWS) retirement"

    Microsoft disables EWS in Exchange Online on 1 October 2026. The Microsoft Graph permissions listed below (User.Read.All, MailboxItem.ImportExport.All, MailboxFolder.ReadWrite.All and MailboxItem.Read.All) allow Exchange data to be backed up and restored through the Microsoft Graph API instead of EWS, and must be in place before that date. See the [Veeam support statement](https://www.veeam.com/kb4820) for details.

## Permissions for Backup

| API      |    Permission Name |  Exchange Online | SharePoint Online and Microsoft OneDrive | Microsoft Teams | Description |
| ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
| Microsoft Graph | Directory.Read.All | ✔ | ✔ | ✔ | Querying Microsoft Entra ID for organization properties, the list of users and groups and their properties.|
| | Group.Read.All | ✔ | ✔ | ✔ | Querying Microsoft Entra ID for the list of groups and group sites.|
| | Sites.Read.All |  | ✔ | ✔ | Querying Microsoft Entra ID for the list of sites and getting download URLs for files and their versions.|
| | TeamSettings.ReadWrite.All |  |  | ✔ | Accessing archived teams.|
| | ChannelMessage.Read.All |  |  | ✔ | Accessing Microsoft Teams public channel messages.|
| | ChannelMember.Read.All |  |  | ✔ | Accessing Microsoft Teams private and shared channels.|
| | User.Read.All | ✔ |  |  | Accessing Exchange mailboxes that belong to a user (getting mailbox IDs).|
| | MailboxItem.ImportExport.All | ✔ |  |  | Exporting Exchange mailbox item data and creating a session to import an Exchange mailbox item.|
| | MailboxFolder.ReadWrite.All | ✔ |  |  | Accessing Exchange mailbox folders.|
| | MailboxItem.Read.All | ✔ |  |  | Accessing Exchange mailbox items: getting item properties, and getting items that were added, deleted or updated in a mailbox folder.|
| Office 365 Exchange Online[^1] | full_access_as_app | ✔ |  | ✔ | Reading mailboxes content. |
| | Exchange.ManageAsApp | ✔ |  |  | Accessing Exchange Online PowerShell to back up public folder and discovery search mailboxes, and to determine the object type for shared mailboxes as Shared Mailbox. This permission works along with the Global Reader role granted to the application. |
| Office 365 SharePoint Online | Sites.FullControl.All |  | ✔ | ✔ | Reading SharePoint sites and OneDrive accounts content. |
| | User.Read.All |  | ✔ | ✔ | Reading OneDrive accounts (getting site IDs). Note: This permission is not used to back up Microsoft Teams data, but you must grant it along with the SharePoint Online and OneDrive permissions to add a Microsoft 365 organization successfully. |

## Permissions for Restore

Restores use the Entra ID application certificate, so these permissions are also of the **Application** type.

| API      |    Permission Name |  Exchange Online | SharePoint Online and Microsoft OneDrive | Microsoft Teams | Description |
| ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
| Microsoft Graph | Directory.Read.All | ✔ |  | ✔ | Querying Microsoft Entra ID for organization properties, the list of users and groups and their properties.|
| | Group.ReadWrite.All |  | ✔ | ✔ | Recreating an associated group in Microsoft Entra ID in case of a deleted team site restore. Note: This permission is only required for restore of SharePoint site data through REST API and PowerShell.|
| | Sites.Read.All |  | ✔ | ✔ | Accessing sites of the applications that are installed from the SharePoint store.|
| | Directory.ReadWrite.All |  | ✔ | ✔ | Setting the preferred data location and creating sites that have Microsoft Teams templates, when creating or accessing a M365 group for a Multi-Geo tenant.|
| | Files.ReadWrite.All |  |  | ✔ | Reading the current state and restoring files of Microsoft Teams shared channels.|
| | ChannelMember.ReadWrite.All |  |  | ✔ | Reading the current state and restoring Microsoft Teams private and shared channels.|
| | User.Read.All | ✔ |  |  | Accessing Exchange mailboxes that belong to a user (getting mailbox IDs).|
| | MailboxItem.ImportExport.All | ✔ |  |  | Exporting Exchange mailbox item data and creating a session to import an Exchange mailbox item.|
| | MailboxFolder.ReadWrite.All | ✔ |  |  | Accessing Exchange mailbox folders: reading folder properties, getting folders that were added, deleted or removed, and creating a new folder or subfolder in a user mailbox.|
| | MailboxItem.Read.All | ✔ |  |  | Accessing Exchange mailbox items: getting item properties, and getting items that were added, deleted or updated in a mailbox folder.|
| Office 365 Exchange Online[^1] | full_access_as_app | ✔ |  |  | Reading the current state and restoring mailboxes content.|
| Office 365 SharePoint Online | Sites.FullControl.All |  | ✔ | ✔ | Reading the current state and restoring SharePoint sites and OneDrive accounts content.|
| | User.Read.All |  | ✔ |  | Resolving OneDrive accounts (getting site IDs). Note: This permission is not required to restore SharePoint Online data.|

[^1]:
    You can check permissions for Office 365 Exchange Online API. For more information, see [Checking Permissions for Office 365 Exchange Online API](https://helpcenter.veeam.com/docs/vbo365/guide/permissions_exchange_online_api_checking.html?ver=8).
