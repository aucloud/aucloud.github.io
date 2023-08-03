**M365 Backup as a Service FAQ's**



- How are backups encrypted? 
  - Is the same key used for all customers?
  - Can the customer bring their own key?

During the onboarding process and prior to the first ingest of data, **customers set their own encryption password** for the encryption of backup data. This encryption password is required if data were to be moved out of AUCloud (such as during transition-out). The Veeam backup application stores the password in an encrypted format within the database, AUCloud cannot access the encrypted password and it is the customers responsibility to store the encryption keys.

 

- Can backups be scanned/sandboxed before restoration?

The primary purpose of the solution is to protect and retain the M365 data, ensuring it can be recovered in case of accidental deletion, data corruption, or other data loss events. Customers do not have access to the backup data other than to perform a search and restore operation. Customers can work with AUCloud to get an export of the backup data if required. Alternatively, customers can restore their M365 data to a Development / Test Microsoft Office 365 instance where security tools and software can be run to inspect, analyse and verify the integrity of the data. 

 

- How is data retention handled ?

Customers can choose the retention policy and retention period based on their preferences. This is captured during the onboarding process and set up during creation of the backup jobs. Customers can choose between Snapshot-based retention and item-level retention.

Snapshot based retention captures the entire state of the data at the point the backup is taken. Item-level retention allows you to retain individual items for a specific period.

Retention periods can be set for the preferred length of time, be it days, weeks, months, years or unlimited. The default retention period is 7 years.

Different retention policies/periods can be applied to different M365 objects/applications by creating dedicated backup jobs for those objects/applications.

 

 

- Is the backup repository available for the customer to scan with tools like     DLP?

No, The backup repository is not exposed to customers or available for scanning.

If customers wish to scan the backed-up data for security purposes, such as running DLP checks or applying additional security measures, they would typically need to restore the data to a separate environment or a temporary location where you can perform the scanning or security checks using the appropriate tools.

 

- How is access managed within your organisation to ensure the confidentiality     and integrity of customer backups?

AUCloud implements the principle of lease privileged access across all services provided to customers. Access to the back-end Veeam backup for M365 infrastructure is only granted to specified AUCloud backup personnel who are security-cleared at a minimum of NV1 level. The AUCloud 24x7 Security Operations Centre monitors the access of all AUCloud back-end infrastructure to ensure no unauthorised access occurs. 

- Are OneDrive, SharePoint and Exchange backups included?

- - Yes, the application can also back up Teams

- Does the service offer Point-in-time restore?

- - Yes, users can select from point-in-time via      the self-service restore portal

- Can the service run Daily backups

- - Yes, default backup scheduled is daily,      overnight. Full ingest on first backup, then incremental forever.

- What options can be set for the backup retention period

- - Customers choice; default is 7 years but can be changed longer or shorter

- Does the service support data archiving (move backups to long term archive)

- - Data sits in our low-cost object storage by default

- What are the restoration abilities

- - Self-service restore portal accessible by all users to restore their own data, or restore operators can be defined to restore on behalf of others.
  - More granular restoration is available together with our Engineers if required
  - Options to export data as a zip/.pst file or restore to a different location available

- Is there accidental deletion coverage with selective rollback

- - Not possible for customers to delete backup data. This is only controlled by authorised, security-cleared AUCloud engineers

- Can you offer a smooth migration to M365 from Dropbox (MaaS)

- - AUCloud do not offer Migration as a Service from Dropbox to M365

- Does the data sit on an Australian server?

- - Yes, AUCloud is a fully sovereign cloud service provider with data stored in our secure data-centre in Australia and guarantees that no data leaves the country.

- What are the storage limits

- - There are no limits to the volume of storage that could be stored with us.

- Can data immutability be set?

- - Yes, immutability can be achieved by enabling the ‘object lock’ setting for the customers preferred length of time.

- Is there vendor lock-in and what is the price to move data out?

- - Customers are not subjected to vendor lock-in to either Veeam, or AUCloud due to data portability, allowing customers to retain their data in a portable format that is independent to Veeam and AUCloud. Through AUCloud’s documented transition-out plan, customers are assisted to transition to a new provider if they choose to. There are no costs to transition out

- What customer support is available?

- - Customer Success Manager is assigned for the whole of the customer lifecycle who acts as a single point of contact for all queries
  - 24/7 support is also available by phone or email

- Can different retention policies be set for different users?

- - Yes this can be set by separating the backup jobs for users with specific retention policies

- Are there E-discovery features?

- - Yes, available through the Veeam backup console on a joint call with AUCloud engineers

- Are you SOC II compliant?

- - AUCloud is ISO27001, Certified Strategic under the DTA’s Hosting Certification Framework and IRAP assessed against PROTECTED controls. Please see [this link](https://urldefense.fivegoodfriends.com.au/?url=https%3A%2F%2Fdocs.australiacloud.com.au%2Flatest%2FPlatform_Overview%2FSecurity%2Fsecurity_and_governance%2F&id=bf9f&rcpt=kieu.mckellar@fivegoodfriends.com.au&tss=1690430900&msgid=37262550-2c33-11ee-a769-ed5e9dc50e68&html=1&h=34478a0a) for our security artefacts.

- Can the solution scale up or down based on my usage?

- - Yes, it is fully scalable up or down based on user numbers or data
