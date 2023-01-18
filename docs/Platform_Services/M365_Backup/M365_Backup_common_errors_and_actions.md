---
title: M365 Backup common errors and actions
description: M365 Backup common errors and actions
---

## Overview

The following table will outline common errors that customers will receive in reports for their M365 backup service and the actions a customer can take to resolve them:

| Error | Solution|
| --- | --- |
| **Cannot change WebPart ExportMode to ‘All’. WebPart will be skipped** | To allow the "Export Mode" to be changed by Veeam Backup for Microsoft 365, you must enable the "Allow custom script" option for the affected SharePoint sites. <p></p><ul>For Personal Sites or OneDrives:<li>[Microsoft 365: Allow or prevent custom script - To allow custom script on OneDrive or user-created sites](https://docs.microsoft.com/en-us/sharepoint/allow-or-prevent-custom-script?ad=in-text-link#to-allow-custom-script-on-onedrive-or-user-created-sites)</li></ul><ul>For any other SharePoint sites:<li>[Microsoft 365: Allow or prevent custom script -To allow custom script on other SharePoint sites](https://docs.microsoft.com/en-us/sharepoint/allow-or-prevent-custom-script?ad=in-text-link#to-allow-custom-script-on-other-sharepoint-sites)</li></ul>
| **Failed to find Team mailbox owner account** | A user with an active Microsoft license needs to be assigned to the team's mailbox to resolve this error. |
| **Mailbox/User does not have a valid M365 license** | User without a valid M365 license needs to be provided with one to enable them as a mail enabled user. |
| **Inside the portal restore enabled customers are only able to see their own mailbox and not others within the organisation** | Customers must change scope inside the restore portal to restore objects from the entire organisation.|
| **(Exchange) Failed to access mailbox. The SMTP address has no mailbox associated with it** | This requires investigation of the backend mailbox and may be because the mailbox has been deleted. |
| **(Exchange) Failed to access mailbox. Access is denied. Check credentials and try again** | This is potentially an issue with the permissions of the impersonation account. |
| **(Exchange) Failed to find group owner account** | Orphaned or decommissioned mailbox that is without an owner. |
| **(SharePoint)  Cannot change web part export mode to ‘All’, because custom scripting is disabled for site: `<site name>`. Web part will be skipped** | Known issue. Refer to the following to remove/reduce these warnings: [Veeam KB4091](https://www.veeam.com/kb4091) |
| **(SharePoint)  Item may have a virus reported by the virus scanner plug-in** | The file appears to be locked by the virus software. Refer to: [SharePoint Online or OneDrive for Business Backup Jobs fail with the Warning](https://www.veeam.com/kb3096) |
| **(SharePoint)  This site has exceeded its maximum file storage limit. To free up space, delete files you don't need and empty the recycle bin** | <ul>Please check the storage limit by following the steps mentioned in the below links:<li>[Create, edit, and delete quota templates in SharePoint Server](http://technet.microsoft.com/en-us/library/cc263223(v=office.15).aspx)</li><li>Items stored under recycle bin will also add to the storage quota. Hence, you can delete the items residing under Site/Site Collection Recycle Bin to free up some space for the time being: [Restore deleted items from the site collection recycle bin ](https://support.office.com/en-in/article/Manage-the-Recycle-Bin-of-a-SharePoint-site-collection-5fa924ee-16d7-487b-9a0a-021b9062d14b?ui=en-US&rs=en-IN&ad=IN)</li></ul><ul>Other useful links may be:<li>[Sharepoint web site has exceeded](http://sharepoint.stackexchange.com/questions/35001/creatingsite-collection-programtically-sharepoint-web-site-has-exceeded-the-st)</li><li>[Collection quota changed but not taking effect](http://sharepoint.stackexchange.com/questions/62777/sharepoint-2010-site-collection-quota-changed-but-not-taking-effect)</li></ul> |