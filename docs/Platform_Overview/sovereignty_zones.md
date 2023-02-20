---
title: AUCloud Sovereignty Zones
description: AUCloud Sovereignty zones and service availability within those zones
---

![Sov Zones](./assets/SZMap.png)

| City     | Sovereign Zone Short Code |
| -------- | ------------------------- |
| Canberra | CSZ                       |
| Sydney   | SSZ                       |
| Brisbane | BSZ                       |

!!! note "Global Services"
    Global services are PaaS or SaaS applications delivered by AUCloud across sovereignty zones. If there is a strong need to deliver out of a particular sovereignty zone.

## Service availability

| Service                                                | Community environment   | Region | Feature(s) / version                              | Notes                                                        |
| ------------------------------------------------------ | ----------------------- | ------ | ------------------------------------------------- | ------------------------------------------------------------ |
| Infrastructure as a Service (VMware Cloud Director)    | Protected               | CSZ    | VMware Cloud Director 10.3.3                      | -                                                            |
|                                                        | Protected               | SSZ    | VMware Cloud Director 10.3.3                      | -                                                            |
|                                                        | Official                | CSZ    | VMware Cloud Director 10.3.3                      | -                                                            |
|                                                        | Official                | SSZ    | VMware Cloud Director 10.3.3                      | -                                                            |
|                                                        | Enterprise              | BSZ    | VMware Cloud Director 10.4.1                      | -                                                            |
| Network - Routing and Load balancing for IaaS          | Protected               | CSZ    | NSX-V 6.4.14                                      | No new VDCs                                                  |
|                                                        | Protected               | CSZ    | NSX-T 3.2.1.2                                     | -                                                            |
|                                                        | Protected               | SSZ    | NSX-V 6.4.14                                      | No new VDCs                                                  |
|                                                        | Protected               | SSZ    | NSX-T 3.2.1.2                                     | -                                                            |
|                                                        | Official                | CSZ    | NSX-V 6.4.14                                      | No new VDCs                                                  |
|                                                        | Official                | CSZ    | NSX-T 3.2.1.2                                     | -                                                            |
|                                                        | Official                | SSZ    | NSX-V 6.4.14                                      | No new VDCs                                                  |
|                                                        | Official                | SSZ    | NSX-T 3.2.1.2                                     | -                                                            |
|                                                        | Enterprise              | BSZ    | NSX-T 3.2.1.2                                     | -                                                            |
| Disaster Recovery (VMware Cloud Director Availability) | Protected               | CSZ    | 4.5                                               | -                                                            |
|                                                        | Protected               | SSZ    | 4.5                                               | -                                                            |
|                                                        | Official                | CSZ    | 4.5                                               | -                                                            |
|                                                        | Official                | SSZ    | 4.5                                               | -                                                            |
|                                                        | Enterprise              | BSZ    | 4.5                                               | -                                                            |
| Storage as a Service (Object Storage)                  | Protected               | CSZ    | Object lock available                             | UI within VCD via Object Storage Extension                   |
|                                                        | Protected               | SSZ    | Object lock available                             | UI within VCD via Object Storage Extension                   |
|                                                        | Official                | CSZ    | Object lock available                             | UI within VCD via Object Storage Extension                   |
|                                                        | Official                | SSZ    | Object lock available                             | UI within VCD via Object Storage Extension                   |
| Microsoft 365 Backup aaS                               | Protected               | Global | Veeam M365 backup v6                              | -                                                            |
|                                                        | Official and Enterprise | Global | Veeam M365 backup v6                              | -                                                            |
| Backup as a Service - for VMs on AUCloud IaaS          | Protected               | CSZ    | Veeam B&R version 11                              | UI within VCD, Tiered storage across NVMe and Object Storage |
|                                                        | Protected               | SSZ    | Veeam B&R version 11                              | UI within VCD, Tiered storage across NVMe and Object Storage |
|                                                        | Official                | CSZ    | Veeam B&R version 11                              | UI within VCD, Tiered storage across NVMe and Object Storage |
|                                                        | Official                | SSZ    | Veeam B&R version 11                              | UI within VCD, Tiered storage across NVMe and Object Storage |
|                                                        | Enterprise              | BSZ    | Veeam B&R version 11                              | UI within VCD, Tiered storage across NVMe and Object Storage |
| Backup as a Service - for VMs outside of AUCloud IaaS  | -                       | Global | Veeam service provider console (cloud connect) v6 | Tiered storage across NVMe and Object Storage                |
| Security Operations Centre as a Service                | Protected               | Global | -                                                 | -                                                            |
|                                                        | Official and Enterprise | Global | -                                                 | -                                                            |
| Sovereign Bridge (network connectivity)                | Protected               | CSZ    | CDC - Connect & NextDC Axon                       | -                                                            |
|                                                        | Protected               | SSZ    | CDC - Connect & NextDC Axon                       | -                                                            |
|                                                        | Official                | CSZ    | CDC - Connect & NextDC Axon                       | -                                                            |
|                                                        | Official                | SSZ    | CDC - Connect & NextDC Axon                       | -                                                            |
|                                                        | Enterprise              | BSZ    | NextDC Axon                                       | -                                                            |
