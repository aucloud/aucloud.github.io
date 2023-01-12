---
title: Azure AD Application Permission requirements
description: Azure AD Application Permission requirements
---

## Permissions for Modern App-Only Authentication

Tables in this section list permissions for Azure AD applications that are granted automatically by Veeam Backup for Microsoft Office 365 when you add organizations using the [modern app-only authentication method](https://helpcenter.veeam.com/docs/vbo365/guide/adding_o365_organizations_sd.html).

## Permissions for Backup

All listed permissions are of the **Application** type.

| API      |    Permission Name |  Exchange Online | SharePoint Online and OneDrive for Business | Microsoft Teams | Description |
| ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
| Microsoft Graph | Directory.Read.All | ✔ | ✔ | ✔ | Querying Azure AD for organization properties, the list of users and groups and their properties.|
| | Group.Read.All | ✔ | ✔ | ✔ | Querying Azure AD for the list of groups and group sites.|
| | Group.Read.Write.All|  | ✔ | ✔ | Querying Azure AD for the list of groups and group sites.|
| | Sites.Read.All |  | ✔ | ✔ | Querying Azure AD for the list of sites and getting download URLs for files and their versions.|
| | TeamSettings.ReadWrite.All |  |  | ✔ | Accessing archived teams.|
| | ChannelMessage.Read.All |  |  | ✔ | Accessing all Teams public channel messages. Note: This permission is only required if you want to back up team chats using Teams Export APIs. For more information, see [Organization Object Types](https://helpcenter.veeam.com/docs/vbo365/guide/vbo_object_types.html#team_chats).|
| Office 365 Exchange Online[^1] |Full Access As App | ✔ |  | ✔ | Reading mailboxes content. |
| SharePoint | Sites.FullControl.All |  | ✔ | ✔ | Reading SharePoint sites and OneDrive accounts content. |
|  | User.Read.All |  | ✔ | ✔ | Reading OneDrive accounts (getting site IDs). Note: This permission is not used to back up Microsoft Teams data, but you must grant it along with SharePoint Online and OneDrive for Business permission to add Microsoft 365 organization successfully. |

[^1]:
    You can check permissions for Office 365 Exchange Online API. For more information, see [Checking Permissions for Office 365 Exchange Online API](https://helpcenter.veeam.com/docs/vbo365/guide/permissions_exchange_online_api_checking.html).

## Permissions for Restore

All listed permissions are of the **Delegated** type and required for data restore using Veeam Explorers.

| API      |    Permission Name |  Exchange Online | SharePoint Online and OneDrive for Business | Microsoft Teams | Description |
| ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
| Microsoft Graph | Directory.Read.All | ✔ | ✔ | ✔ | Querying Azure AD for organization properties, the list of users and groups and their properties.|
| | Group.ReadWrite.All |  |  | ✔ | Recreating in Azure AD an associated group in case of teams restore.|
| | Sites.Read.All |  | ✔ | ✔ | Accessing sites of the applications that are installed from the SharePoint store.|
| | Directory.ReadWrite.All |  |  | ✔ | Setting the preferred data location when creating a new O365 group for a multi-geo tenant in case of teams restore.|
| | Offline Access | ✔ | ✔ | ✔ | Obtaining a refresh token from Azure AD.|
| Office 365 Exchange Online[^1] | EWS.AccessAsUser.All | ✔ |  |  | Accessing mailboxes as the signed-in user (impersonation) through EWS.|
| SharePoint | AllSites.FullControl |  | ✔ | ✔ | Reading the current state and restoring SharePoint sites and OneDrive accounts content.|
|  | User.Read.All |  | ✔ |  | Resolving OneDrive accounts (getting site IDs). Note: This permission is not required to restore SharePoint Online data.|

[^1]:
    You can check permissions for Office 365 Exchange Online API. For more information, see [Checking Permissions for Office 365 Exchange Online API](https://helpcenter.veeam.com/docs/vbo365/guide/permissions_exchange_online_api_checking.html).
