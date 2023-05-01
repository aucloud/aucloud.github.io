---
title: Security and Governance
description: Security and Governance
---

## AUCloud's assessments and certifications

The programs below may contain additional information available to current and prospective clients under NDA.
Please reach out to your AUCloud sales team for additional details.

| Assessment/Certification Program                                                                                                           | Evidence                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------- |
| [IRAP](https://www.cyber.gov.au/resources-business-and-government/assessment-and-evaluation-programs/infosec-registered-assessors-program) | [December 2022 Assessment Letter](./assets/AUCloud_IRAP_Letter_December_2022.pdf)                                            |
| [ISO-27001 Information Security Management Systems](https://www.iso.org/standard/27001)                                                    | [2023 Certificate](./assets/AUCloud_ISO_27001_Certificate_2023.pdf)                                                          |
| [Defence Industry Security Program membership](https://www.defence.gov.au/security/industry)                                               | [2021 Certificate](./assets/AUCloud_(Sovereign_Cloud Australia)_DISP_Certificate.pdf)                                    |
| [DTA Hosting Certification Framework](https://www.hostingcertification.gov.au/)                                                            | [Certified strategic certificate](./assets/AUCloud_(Sovereign Cloud Australia)_Certificate_of_Hosting_Certification.pdf) |

## Summary of AUCloud Security Controls

### Backup and Disaster Recovery - Customer Backups

The backup of customer virtual machines is the responsibility of the customer.  Customers now have the ability to sign up to AUCloud's Backup as a Service (BaaS) solution which allows them to backup or restore the VMs within VMware Cloud Director via the Veeam Enterprise Manager vCD plugin. With this option, customers can define their backup scheduling, retention policies and application aware backups.

In addition, as part of the basic level storage offering, AUCloud provides Logical Unit Number (LUN level) snapshots of customer's volumes. A LUN allows the host computer to access the logical unit and the data it contains through a logical connection, rather than a physical connection. The LUN level snapshots are handled by the FlashArray and are kept for 7 days. The LUN level snapshots will give AUCloud the ability to restore customer's VM(s) in the event the customer needs to roll back to a previous snapshot. This measure will not provide a recovery capability if the customer deletes their VM image. In addition, these snapshots will not be replicated to the DR site and may not be useful in a DR scenario.

### ICT Media

All ICT media is owned by AUCloud. Media is not returned to vendors for maintenance, replacement etc. Unserviceable media is destroyed in accordance with the ISM.

### Physical Security

All CDC, NEXTDC facilities and AUCloud offices are certified as Zone 4 in accordance with the Protective Security Policy Framework (PSPF). The PSPF defines Australian Government security guidance across governance and information, personnel and physical systems.

AUCloud infrastructure is hosted in its own dedicated POD within CDC and NEXTDC. The PODs are not shared with any other customer.

Access controls to the AUCloud POD are managed by CDC and NEXTDC in their respective data centre facilities.

### Data Ownership and Data Retention

The AUCloud Terms and Conditions of Service Agreement with the customer provides the details of the ownership of customer data.

The customer maintains ownership of its data at all times. When the customer ceases its engagement with AUCloud, AUCloud will facilitate the transfer of customer data to the customer or the customer’s new service provider. At the end of the contract with AUCloud the customer’s data is retained for 30 days after formal advice has been given. Once deleted the data is no longer recoverable.

Backed up VM’s are retained for 24 hours before being overwritten.

### Data Segregation

AUCloud provides three separate physical infrastructure services which provide compute, storage and network.  These systems are dedicated to OFFICIAL, PROTECTED and ENTERPRISE information, respectively.

AUCloud shared services management environment is managed at the PROTECTED level.

Customers are wholly segregated from other customers. Virtualised networking patterns are implemented on an individual customer basis.

### Data Classification

AUCloud is assessed to process, store or communicate, data at the PROTECTED security classification in accordance with the Protective Security Policy Framework (PSPF) and the controls marked ‘P’ in the Australian Government Information Security Manual (ISM).

### Incident Response

Experienced, trained security analysts identify, assess and respond to key threats and vulnerabilities detected by the AUCloud protective monitoring service.

The AUCloud Community Rules Information Security Policy (CRISP) describes the incident response, alerting and reporting that is provided by AUCloud.

The customer is responsible for incident response within their tenancy. AUCloud will assist customers during an incident upon request. AUCloud will facilitate the provision of logs, VM’s and other evidence.

### Security patch management

AUCloud systems are patched in accordance with the time-frames defined in the Information Security Manual (ISM) PROTECTED controls and vendor patch cycle cadence through the scheduled maintenance windows. AUCloud has a patch management policy and process for the implementation of extreme patches.

Customers are advised of any patches that may impact their environment.

Customers are responsible for the security patching of their environment.

### Vulnerability Management

The AUCloud environment and portals are penetration tested by independent penetration testers annually. Discovered vulnerabilities are reviewed by the AUCloud CISO and remediated accordingly.

AUCloud maintains regular (weekly) vulnerability scanning of its systems. Discovered vulnerabilities are reviewed by the AUCloud SOC and remediated accordingly.

### Real time logging, monitoring and detection

AUCloud operates its own in Security Operations Centre (SOC) which implements proactive monitoring to reduce cyber threats and attacks. AUCloud's cyber security monitoring provides a single holistic view of risk and threats across an enterprise, including private and public cloud infrastructure, and is designed to identify threats before they become incidents. The SOC monitors all AUCloud endpoint devices, servers, storage and network devices.  Logs and events meeting the minimum requirements of the ISM are collected, monitored and responded to.

The SOC actively monitors and alerts for unauthorised access to the customer environment by AUCloud staff or systems.

Data traversing the AUCloud next generation firewalls (NGFE) is filtered and inspected for malicious behaviour. Note: Encrypted customer data is not broken and inspected.

!!! note

```
AUCloud does not monitor customer environments.
```

AUCloud offers SOC as a Service (SOCaaS) which, if purchased, customers can utilise to monitor their environments.

### Network Continuity of Service

AUCloud utilises two ISPs to provide internet connectivity with the AUCloud border router providing no less than 10Gbits a second as a base interface for the ISP to connect to the enterprise.

DDoS protection is provided by Vocus.

### Data Encryption

#### Data in Transit

Data in transit to a customer environment is configured and managed by the customer. Customers can leverage the inbuilt VPN features (IPSec, TLS VPN) of the ESG to secure traffic entering and/or exiting their vDC. In consultation with the customer, AUCloud will configure data connections using ASD approved protocols.

Data in transit to the AUCloud management portals are TLS (1.2 or higher) with multi-factor authentication.

#### Data at Rest

Data at rest encryption is available to customers data using the Veeam backup solution. Veeam utilises AES 256 (an ASD approved cryptographic algorithm).

Customer VM’s are encrypted at rest using AES 256.

### Access to Customer Data

AUCloud standard users cannot access AUCloud infrastructure or customer environments.

AUCloud privileged users are not permitted to access customer environments without the express written permission of the customer and AUCloud Chief Operating Officer (COO) or Chief Information Security Officer (CISO). Access to customer systems by AUCloud personnel is logged and monitored.

Customers may request the assistance and support of AUCloud system administrators to assist in the configuration or emergency management of their tenancy.

### Personnel Security

All staff employed by AUCloud are permanent employees and have undergone pre-employment and background checks prior to appointment. All staff with privileged access possess a current Australian Government Security Vetting Agency (AGSVA) Baseline or higher clearance.

Foreign nationals employed by AUCloud do not have privileged access to the AUCloud Environment or access to the customer environment or their data.

Contractors may be hired by AUCloud from time to time for specific activities. Contractors are subject to the same pre-employment and security checks as AUCloud staff.

### Extrajudicial control and interference by a foreign entity

AUCloud is not subject to foreign laws such as the US Cloud Act. However, this does not prevent data being sought through the mutual legal assistance (MLA) process. AUCloud will comply with any authorised Australian legislation or access served under warrant such as the Assistance and Access Act 2018.

### Delivery of AUCloud services

AUCloud services are provided from CDC Fyshwick ACT (Sovereignty Zone 1), CDC Eastern Creek NSW (Sovereignty Zone 2) and NEXTDC Fortitude Valley (Sovereignty Zone 3) QLD.

In the event of an incident impacting Sovereignty Zone 1, AUCloud services are provided from Sovereignty Zone 2. The same solution is provided in reverse if an incident impacting Sovereignty Zone 2, AUCloud services are provided from Sovereignty Zone 1.

Access from offshore to AUCloud systems and customer systems is blocked unless specifically permitted.

### Location of AUCloud offices, data centres, administrative and support staff

AUCloud’s primary office is located at:  Unit 7/15-21 Beaconsfield St, Fyshwick ACT. The primary office supports the AUCloud technical, administrative and support staff.

AUCloud infrastructure is hosted in Canberra Data Centres (CDC) facilities in Fyshwick ACT and offsite disaster recovery (DR) facility at CDC Eastern Creek NSW.  The Enterprise Data Community Environment (EDCE) is hosted in NEXTDC Fortitude Valley QLD.

AUCloud development teams are located in Brisbane.

### How does AUCloud conform to current security standards

In late 2018 AUCloud undertook its first IRAP assessment.   Further to this, in October 2020 AUCloud was independently assessed by an IRAP assessor under the ACSC Cloud Security Controls Matrix (CCSM) released in July 2020.  AUCloud continues to maintain IRAP certification and undergoes IRAP assessments very two years.

The IRAP assessors cloud security assessment report (AUCloud security fundamentals and cloud services report), CCSM, System Security Plan (SSP) and other security related documents are available to customer security teams upon request.

AUCloud aligns to the requirements of the PSPF and the ACSC Essential 8 with a self-assessed maturity of level 2.

AUCloud is ISO/IEC 27001 certified having received certification in January 2020.

AUCloud has been awarded vendor certifications: Cisco Master Service Provider for Cloud and Managed Services and VMware Cloud Verified.

AUCloud has built its own security framework to align with the requirements of the ISM and ACSC.  This includes but is not limited to the following:

- Cloud security assessment report (AUCloud security fundamentals and cloud services report).
- System Security Plan (SSP): As required by the ISM, an SSP is maintained for AUCloud to describe the solution’s control environment.
- ACSC Cloud Security Controls Matrix (CCSM): List of the applicable controls from the ISM that provides a mechanism to identify and track solution security controls and can be used to indicate which controls have been implemented and provide justification for controls that have not been implemented.
- Policies and Plans: AUCloud’s staff are subject to security policies which are guiding principles that ensure the availability, integrity and confidentiality of sensitive information and the AUCloud service.
- Action Plan: As required by the ISM, the Action Plan describes a plan of action and milestones to monitor and reduce security vulnerabilities to the AUCloud system.
- Standard Operating Procedures (SOPs): AUCloud maintains various SOPS which provide employees guidance to fulfil their security obligations.
- Security Cleared Personnel: AUCloud employees with privileged access to systems hold a Baseline or higher security clearance.  AUCloud upholds the security requirements required as a member of the Defence Industry Security Program.

### Ownership of AUCloud

Sovereign Cloud Australia (AUCloud) is entirely owned, governed and managed by Australians. Customer, operational and management data is only accessible from onshore Australia. All data including customer data, metadata, support and administrative data along with backup data remains onshore (in Australia).
