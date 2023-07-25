---
title: FAQ
description: Frequently Asked Questions
tags:
    - vmware-cloud-director
---

# Frequently Asked Questions

## Overview

This page has common asked questions regarding the NSX-V to NSX-T migration process.

## Questions

1. Will my Edge Gateway receive a new external/public IP address?

	*No, the migration will move the external IP address(es) from the NSX-V Edge Gateway to the NSX-T Edge Gateway.*

2. What's the impact to infrastructure during the migration? Is there downtime?

	*During the migration there will be interruptions to network traffic.  Network traffic interruptions will occur for all network addresses that will be transferred from NSX-V to the NSX-T system. These changes happen very fast but do cause breif interruptions when routes are updating.  Same minor interruptions occur when Virtual Machines are moved to the NSX-T hosting compute.*

3. How long does the migration process take?

	*The time the migration takes is completely dependant on the complexity of the customer environment.  Main factors that increase migration time are the number of Virtual Machines, number of networks, number of Firewall Rules, NATs, etc.  Rough timeframes are between 2-5 hours.  The assigned AUCloud technical resource that is completing the migration will be able to better advise on this when completing the pre-assessment of the migration for the particular customer tenancy.*

4. Does the migration impact access to the API?  Does my infrastructure-as-code still work?

	*The API does not change in the migration process.  Unique identifiers for VMs/vApps/Networks do not change, however the containing Virtual Data Center (OrgVDC) Unique ID does, as a new Virtual Data Center is created that controls resources on NSX-T enabled compute.  This will impact some tools like Terraform that will have state files that reference deployed infrastructure with the OrgVDC ID.  Please raise this with the AUCloud technical resource to help with the impact on your API access.*
