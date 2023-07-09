---
title: AUCloud Sites connected via VCDA
description: AUCloud Sites connected via VCDA
tags:
    - vmware-cloud-director
    - vmware-cloud-director-availability
---

## Overview

VMware VMware Cloud Director Availability (VCDA) is configured in all AUCloud Sovereignty Zones.  This article outlines details for each VCDA instance and what zones (ie peer sites) are connected.

## AUCloud site-to-site connections

| Sovereignty Zone | City | Community Environment | VCDA Site Name | Connected Peer Site(s) |
| --- | :-- | :-- | :-- | :-- |
| AUCloud CSZ | Canberra | OFFICIAL | AUC_CDC_Fysh1-UP-Prod-01 | AUC_CDC_ECrk1-UP-Prod-01 |
| AUCloud CSZ | Canberra | PROTECTED | AUC_CDC_Fysh1-PP-Prod-01 | AUC_CDC_ECrk1-PP-Prod-01 |
| AUCloud SSZ | Sydney | OFFICIAL | AUC_CDC_ECrk1-UP-Prod-01 | AUC_CDC_Fysh1-UP-Prod-01, AUC-NDC-Brisbane |
| AUCloud SSZ | Sydney | PROTECTED | AUC_CDC_ECrk1-PP-Prod-01 | AUC_CDC_Fysh1-PP-Prod-01 |
| AUCloud BSZ | Brisbane | OFFICIAL | AUC-NDC-Brisbane | AUC_CDC_ECrk1-UP-Prod-01 |
