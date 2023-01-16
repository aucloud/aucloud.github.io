---
title: Software Licensing
description: Software Licensing
---

## Overview

AUCloud can provide licensing for a number of Microsoft; VMware; and Red Hat products when deployed within the AUCloud infrastructure.
Licensing models may change depending on whether AUCloud's multi-tenant platform is used; or if a customer deploys to a dedicated environment.

## Operating system license templates

AUCloud provided templates for Microsoft Windows (various versions); and Red Hat Enterprise Linux by default will use AUCloud provided Licenses.
If you are seeking to Bring Your Own License (BYOL), please contact your Customer Success Manager.

## Microsoft Products currently supported by AUCloud

For a product not on this list please contact [AUCloud support](../support) or your sales team.

| Name           | Version     | How                                                                  |
| -------------- | ----------- | -------------------------------------------------------------------- |
| Windows Server | 2022        | AUCloud standard template in VCD                                     |
| Windows Server | 2019        | AUCloud standard template in VCD                                     |
| Windows Server | 2022        | AUCloud standard template in VCD                                     |
| BYOL Windows   | Any         | Customer provided or AUCloud template, contact support for licensing |
| SQL Server     | Standard    | Customer installed, contact support for licensing                    |
| SQL Server     | Web         | Customer installed, contact support for licensing                    |
| SQL Server     | Datacentre  | Customer installed, contact support for licensing                    |

## Microsoft licensing in AUCloud's multi-tenant platform

AUCloud licences Microsoft products using the Service Provider License Agreement (SPLA).
Unfortunately, this does not provide any not for profit or charity options for licensing.
However, customers can choose to bring their own licences (subject to applicability), through Microsoft's recent improvements in licensing and the Flexible Virtualisation Benefit.

!!! note "Flexible Virtualisation benefit"
    Products covered by the [Flexible Virtualisation Benefit](https://wwlpdocumentsearch.blob.core.windows.net/prodv2/Licensing_guide_PLT_Flexible_Virtualization_Benefit_Nov2022.pdf?sv=2020-08-04&se=2123-01-09T02:48:55Z&sr=b&sp=r&sig=KRfr9gBN%2BY%2BQzJUA1U92X2WFAzu4aouo%2FZXL4sxKLM0%3D)
    The Flexible Virtualisation benefit applies to all software products that are available under subscription licenses or licenses with Software Assurance coverage.
    This includes server products such as Windows Server, SQL Server, Exchange Server, SharePoint Server, System Center and others.
    This also includes desktop products such as Windows 10/11, Office desktop applications and Microsoft 365 Apps.

Customers are also able acquire and bring their own licences (for example Academic or Not For Profit) through other Microsoft licensing schemes such as the Enterprise Agreement or Open Value subscription.
Microsoft provide specific licensing options for some [industries](https://www.microsoft.com/en-us/licensing/licensing-programs/licensing-for-industries?activetab=licensing-for-industries-pivot:primaryr4) which can be exploited.

### BYOL Windows Server licenses

In order to bring Windows servers to the AUCloud shared infrastructure.

!!! note "Minimum core licenses for BYOL"
    There is a Microsoft mandated minimum of 8 cores per windows VM for BYOL.
    Customers are advised that under 8 cores it is likely to be more cost effective provisioning licenses via AUCloud

1. Validate your licenses (see the references below)
1. Provide AUCloud (via support) either
   1. the host-names or;
   1. a VDC where every Microsoft Windows license is BYOL

## AUCloud Hardware dedicated customers

Customers can bring most Microsoft licences to dedicated hardware as, from Microsoft’s perspective, the hardware is no different to the customer running it themselves.

## Microsoft licensing references

- [SPLA](https://www.microsoft.com/en-us/licensing/licensing-programs/spla-program)

- [Software Assurance](https://www.microsoft.com/en-us/licensing/licensing-programs/software-assurance-license-mobility?rtc=1)

- [Microsoft Licensing Guides](https://www.microsoft.com/licensing/docs/view/Licensing-Guides)

- [Flexible Virtualisation Benefit | Licensing Guide](https://wwlpdocumentsearch.blob.core.windows.net/prodv2/Licensing_guide_PLT_Flexible_Virtualization_Benefit_Nov2022.pdf?sv=2020-08-04&se=2123-01-09T02:48:55Z&sr=b&sp=r&sig=KRfr9gBN%2BY%2BQzJUA1U92X2WFAzu4aouo%2FZXL4sxKLM0%3D)

- [Windows Server | Licensing Guide](https://wwlpdocumentsearch.blob.core.windows.net/prodv2/Licensing_guide_PLT_Windows_Server_2022_Oct2022.pdf?sv=2020-08-04&se=2123-01-09T02:48:55Z&sr=b&sp=r&sig=2rpC9wnS4kzpamtV0cM2r8hDjtC967m8fudcU6ui8fM%3D)

- [Training | Get Licensing Ready](https://getlicensingready.com/)

- [Universal License Terms](https://www.microsoft.com/licensing/terms/product/ForallSoftware)

- [Licensing glossary](https://www.microsoft.com/licensing/terms/product/Glossary/all)
