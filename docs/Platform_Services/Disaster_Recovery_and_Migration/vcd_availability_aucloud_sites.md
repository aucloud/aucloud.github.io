---
title: AUCloud Sites connected via VCDA
description: AUCloud Sites connected via VCDA
---

## Overview

VMware VMware Cloud Director Availability (VCDA) is configured in all AUCloud Sovereignty Zones.  This article outlines details for each VCDA instance and what zones (ie peer sites) are connected.

## AUCloud site-to-site connections

| Sovereignty Zone | City | URL | VCDA Site Name | Connected Peer Site(s) |
| --- | :-- | :-- | :-- | :-- |
| AUCloud CSZ | Canberra | vcav.sz101.australiacloud.com.au | AUC_CDC_Fysh1-UP-Prod-01 | AUC_CDC_ECrk1-UP-Prod-01 |
| AUCloud SSZ | Sydney | vcav-sz201.australiacloud.com.au | AUC_CDC_ECrk1-UP-Prod-01 | AUC_CDC_Fysh1-UP-Prod-01<br/>AUC-NDC-Brisbane |
| AUCloud BSZ | Brisbane | vcda-bsz.enterprise.australiacloud.com.au | AUC-NDC-Brisbane | AUC_CDC_ECrk1-UP-Prod-01 |
| AUCloud MSZ | Melbourne | vcda-msz.portal.australiacloud.com.au | AUC-NDC-Melbourne | *future site* |
