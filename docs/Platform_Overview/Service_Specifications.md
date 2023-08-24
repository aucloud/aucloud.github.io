# Service Overview

AUCloud operates from geo-resilient data centres in Canberra, Sydney, Brisbane and Melbourne (CDC Data Centres and NEXTDC). AUCloud's highly qualified team is based locally, with corporate headquarters and our Security Operations Centre based in Canberra, ACT.

## AUCloud Automation, Orchestration and Management Portal

The AUCloud Management portal is fully API driven and allows for all functions to be performed via the API Gateway or UI. The portal employs a microservices based architecture and employs TLS end to end encryption between the browser and the data store.

| Features | Benefits |
| -----------| -------------|
| User Management | Add users, control permissions, disable or delete users |
| Billing information | View real-time status, invoices, transactions and purchase orders |
| vCloud | Access vCloud services |
| Support | Access the Customer Support Portal |
| Announcements | View platform improvements and planned outages |

## Connectivity

| Mode | Description |
| ------- | ------- |
| Internet | Unmetered connectivity to your AUCloud service (included with IaaS pricing) |
| Direct patch | For existing customers within a CDC site (charges apply) |
| AUCloud Sovereign Bridge |Connect your on-premise resources to your AUCloud resources via the CDC Data Centre Interconnect, or through the NEXTDC AXON network via ICON or private connection (charges apply) |



## Compute (CaaS)

### VMware Cloud Director

Cloud Director provides role-based access to a HTML 5 web console that allows administrators of an organisation to interact with the organisations hosted resources to create, configure and manage virtual machines. Cloud Director is deployed on ESXI version 6.7 and supports VMware hardware version 15 and below.

| Features | Benefits |
| -----------| -------------|
| Elastic Virtual Datacenters | Isolated virtual resources, independent role-based authentication and fine grained control |
| Elastic Scalable VM's | Adjust virtual machine attributes such as CPU, RAM and storage at any time |
| Applications catalog | Upload applications and OVF files for quick deployment when creating additional Virtual Datacenters
| Automation | Supports infrastructure-as-code driven workflows via the AUCloud API gateway |
| Networking | Advanced networking capabilities powered by NSX which can be isolated or routed through the provided Edge Services Gateway
| Edge Gateway | Provides connectivity between one or more Cloud Director external networks and one or more Organisation VDC networks |


### Edge Services Gateway Features

| Features | Benefits |
| -----------| -------------|
| Public IP Addresses | 2 public addresses are provided with the Edge Services Gateway, additional IP addresses can be purchased upon request |
| Routing | Static, OSPF and BGP |
| Firewalling | Yes, with objects and IP sets |
| DHCP | DHCP bindings, relay |
| Network Address Translation | TCP/UDP/ICMP/any protocol NAT IP/CIDR ranges can be used |
| Load Balancing | Up to layer 7 with SSL termination, X-header forwarding, custom health check, application rules and TCP L4 acceleration |
| IPsec VPN | ISM Compliant Configuration in both Policy and Routed mode |
| Syslog | vCloud Director API for NSX |
| API | HTML5 |
| Interfaces | Up to 10 network interfaces that can be external or internal. Up to 200 interfaces when internal are configured as sub interfaces which creates a trunk on one interface |

## Storage (STaaS)

Cloudian Object Storage can be consumed directly from Cloud Director or via a web browser or compatible S3 object browser. With Cloudian you can deploy, manage and consume S3-compatible storage from within your AUCloud service. Cloudian is the industry’s most compatible S3 API exposing features including object lock.

| Features | Benefits |
| -----------| -------------|
| S3 Compatible | Applications that rely on the S3 API can be migrated to AUCloud without code changes |
| Scale | Built on scale-out repositories that grow from terabytes to exabytes within a single namespace |
| Object Lock | Protect data from ransomware with Object Lock for data immutability |
| Cloud Director OSE | Access buckets from Cloud Director Object Storage Extension within your tenancy |

## Backup (BaaS)

Veeam Backup Enterprise Manager supports VMware Cloud Director through a self-service portal. Users can manage their backup jobs, as well as restore VMs, files and application items.


| Features | Benefits |
| -----------| -------------|
| Fully self-manage backups of your VMs and data | <ul><li>Create new backup jobs for objects</li><li>Configure, modify and delete backup and recovery jobs</li><li>Expose reporting information for backups - failed backups, failed restores</li><li>Restore Cloud Director VMs to their original vApps and vApps to the original vDC</li><li>Perform application item restore for SQL Server and Oracle databases</li><li>Restore files from indexed and non-indexed VMs guest file system</li></ul> |

## M365 Backup (M365 BaaS)
AUCloud M365 Backup is powered by Veeam Backup for Microsoft Office 365. The M365 administrator will create a backup service account with appropriate permissions and the backup job is configured by AUCloud staff. After initial configuration is complete, users can access a self-service portal to perform restore functions for Microsoft Exchange, OneDrive, SharePoint and Microsoft Teams data.

| Features | Benefits |
| -----------| -------------|
| Restre M365 objects from sel-service portal | The following functions are enabled by M365 backup: <ul><li>Restore mailbox items</li><li>Restore calendar items</li><li>Restore SharePoint items</li><li>Restore OneDrive objects</li><li>Items can be restored to their original locations, to PST files or to an alternative location</li></ul>

## Disaster Recovery (DRaaS)

VMware Cloud Director Availability provides a simple and secure migration and disaster recovery services for on-premise to cloud and cloud to cloud use cases.
Protections can be set up using either VMware Cloud Director Availability (vCDA), or Veeam Cloud Connect

| Features | Benefits |
| -----------| -------------|
| Disaster Recovery | Enable protections for vApps and VMs which can be recovered from either the on-premise vCentre plugin or via Cloud Director |
| Test Failover | Conduct a non-disruptive test of your disaster recovery protection at any time |
| Migrations | Migrate VMware workloads from on-prem to AUCloud or from one AUCloud data centre to another |

## Active Threat Monitoring

AUCloud infrastructure and supporting services are monitored by a 24/7 Security Operation Centre (SOC). The SOC provides proactive cyber threat monitoring of AUCloud’s internal networks as well as the perimeter protection of all AUCloud customers.

| Features | Benefits |
| -----------| -------------|
| Monitoring | The SOC monitors, logs and analyzes all cyber traffic on a continuous basis |
| Alert Triage | Near real-time cyber monitoring, triage and analysis response enables cyber threat intelligence at scale. Your security representative will be contacted directly from our SOC team to triage any alerts |

## Support

### Sales Support

Support to ensure you are informed about AUCloud services and that you are advised of the right product for your business needs.

### Onboarding Support

AUCloud provides complimentary onboarding assistance via our Customer Success Managers. Our CSM’s are committed to working with you to achieve your business outcomes whether it be a free trial to become familiar with our systems, or a large-scale migration of on-premise systems to cloud.

| Features | Benefits |
| -----------| -------------|
| Free Trial | Become familiar with our systems and put our commitment to your success to the test |
| Tailored guidance | Training and walk-throughs are tailored to individual needs |
| Access to support materials | Technical documentation website available for customers to access user guidesand FAQ's |
| Assistance | We provide guidance to an organisations CISO in order to understand our CRISP. We assist finance and project managers to understand our billing process in order to monitor and control expenditure |
| Single Point of Contact | Your allocated CSM will be a single point of contact to guide you as your requirements change and will facilitate access to our service experts when required |
| Engagement at the right time | AUCloud CSM’s will ensure that your staff are engaged at the right time, delivering clear delineation of roles and responsibilities |

### Ongoing Support

AUCloud support staff are on hand to assist customers with any support issues or queries related to the platform. AUCloud support can be accessed using the following methods:

- Phone: 1800-AUCLOUD (282 5 683)
- Email: support@aucloud.com.au
- Knowledge Base: [docs.australiacloud.com.au](https://www.docs.australiacloud.com.au)
- Online: via the AUCloud Customer Support Portal.

### Offboarding Support

Our terms and conditions underpin our commitment to provide an efficient and effective disengagement service while causing the minimum of disruption and inconvenience to the customer.

| Features | Benefits |
| -----------| -------------|
| No contract lock in | Because we offer a true IaaS service there is no contract lock in and understand that customers need to be able to engage and as appropriate, disengage with services easily without penalty or cost |
| No data egress | AUCloud does not charge for data egress; this eliminates the risk of lock-in compared to other providers who often charge punitive egress and ingress rates for removing your data at the end of a contract |
| Assisted offboarding process | The CSM assists with the offboarding process as follows: <ul><li>Request for removal of a customer service</li><li>Service termination date</li><li>Handover of data upon the termination of service</li><li>Removal of Services/containers</li><li>Verification is provided once your content is removed from the AUCloud platform</li><li>Final bill
</li></ul>




