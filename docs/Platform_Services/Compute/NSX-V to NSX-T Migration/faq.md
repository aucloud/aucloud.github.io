---
title: FAQ
description: Frequent Asked Questions
tags:
    - vmware-cloud-director
---

# Frequent Asked Questions

## Overview

This page has common asked questions regarding the NSX-V to NSX-T migration process.

## Questions

1. Does my Edge Gateway get a new external/public IP address?

	No, the migration will move the enternal IP addresses from the NSX-V Edge Gateway to the NSX-T Edge Gateway.

2. What's the impact to infrastructure during the migration? Is there downtime?

	During the migration there will be interuptions to network traffic.  This will occur for all network address that will be transfered from NSX-V to the NSX-T system. These changes happen very fast but do cause network intruption when routes are updating.  Same minor interuptions occurs when Virtual Machines are moved to the NSX-T hosting compute.

3. How long does the migration proccess take?

	The time the migration takes is completely depended on the complexity of the customer's environment.  Main factors that increase migration time are number of Virtual Machines, number of networks, number of Firewall Rules, NATs, etc.  Rough time frames are between 2-5 hours.  The AUCloud techincal resource that is completing the migraiton will be able to better advise on this when completing the pre-assessment of the migration for the particular customer tenancy.

4. Does the migration impact access to the API?  Does my infrastructure-as-code still work?

	The API does not change in the migration process.  Unique identifiers for VMs/vApps/Networks do not change, however the containing Virtual Data Center (OrgVDC) Unique Id does, as a new Virtual Data Center is created that controls resouces on NSX-T enabled compute.  This will impact some tools like Terraform that will have state files that reference deployed infrastructure with the OrgVDC Id.  Please raise this with the AUCloud techincal resource to help with the impact on your API access.

5. When will AUCloud's Lumberjack logging solution be ready for customer use?

	Lumberjack is a logging solution to relace the NSX-V Edge Gateway Syslog. first week of August?

6. Will I need to pay for the object storage cost related to Lumberjack?

	?