---
title: AUCloud Sovereignty Zones
description: AUCloud Sovereignty zones and service availability within those zones
---

![Sov Zones](./assets/SZMap.png)

| City      | Sovereign Zone Short Code |
| --------- | ------------------------- |
| Canberra  | CSZ                       |
| Sydney    | SSZ                       |
| Brisbane  | BSZ                       |
| Melbourne | MSZ                       |

!!! note "Global Services"
    Global services are PaaS or SaaS applications delivered by AUCloud across sovereignty zones (per community environment). If you believe you have requirements above this contact your CSM.

## Service availability

| Service                                                | Community environment   | Region | Feature(s) / version                              | Notes                                                        |
| ------------------------------------------------------ | ----------------------- | ------ | ------------------------------------------------- | ------------------------------------------------------------ |
| Infrastructure as a Service (VMware Cloud Director)    | PDCE               | CSZ    | VMware Cloud Director 10.3.3                      | -                                                            |
|                                                        | PDCE               | SSZ    | VMware Cloud Director 10.3.3                      | -                                                            |
|                                                        | ODCE                | CSZ    | VMware Cloud Director 10.3.3                      | -                                                            |
|                                                        | ODCE                | SSZ    | VMware Cloud Director 10.3.3                      | -                                                            |
|                                                        | EDCE              | BSZ    | VMware Cloud Director 10.4.1                      | -                                                            |
| Network - Routing and Load balancing for IaaS          | PDCE               | CSZ    | NSX-V 6.4.14                                      | No new VDCs                                                  |
|                                                        | PDCE               | CSZ    | NSX-T 3.2.1.2                                     | -                                                            |
|                                                        | PDCE               | SSZ    | NSX-V 6.4.14                                      | No new VDCs                                                  |
|                                                        | PDCE               | SSZ    | NSX-T 3.2.1.2                                     | -                                                            |
|                                                        | ODCE                | CSZ    | NSX-V 6.4.14                                      | No new VDCs                                                  |
|                                                        | ODCE                | CSZ    | NSX-T 3.2.1.2                                     | -                                                            |
|                                                        | ODCE                | SSZ    | NSX-V 6.4.14                                      | No new VDCs                                                  |
|                                                        | ODCE                | SSZ    | NSX-T 3.2.1.2                                     | -                                                            |
|                                                        | EDCE              | BSZ    | NSX-T 3.2.1.2                                     | -                                                            |
| Disaster Recovery (VMware Cloud Director Availability) | PDCE               | CSZ    | 4.5                                               | -                                                            |
|                                                        | PDCE               | SSZ    | 4.5                                               | -                                                            |
|                                                        | ODCE                | CSZ    | 4.5                                               | -                                                            |
|                                                        | ODCE                | SSZ    | 4.5                                               | -                                                            |
|                                                        | EDCE              | BSZ    | 4.5                                               | -                                                            |
| Storage as a Service (Object Storage)                  | PDCE               | CSZ    | Object lock available                             | UI within VCD via Object Storage Extension                   |
|                                                        | PDCE               | SSZ    | Object lock available                             | UI within VCD via Object Storage Extension                   |
|                                                        | ODCE                | CSZ    | Object lock available                             | UI within VCD via Object Storage Extension                   |
|                                                        | ODCE                | SSZ    | Object lock available                             | UI within VCD via Object Storage Extension                   |
| Microsoft 365 Backup aaS                               | PDCE               | Global | Veeam M365 backup v6                              | -                                                            |
|                                                        | ODCE and EDCE | Global | Veeam M365 backup v6                              | -                                                            |
| Backup as a Service - for VMs on AUCloud IaaS          | PDCE               | CSZ    | Veeam B&R version 11                              | UI within VCD, Tiered storage across NVMe and Object Storage |
|                                                        | PDCE               | SSZ    | Veeam B&R version 11                              | UI within VCD, Tiered storage across NVMe and Object Storage |
|                                                        | ODCE                | CSZ    | Veeam B&R version 11                              | UI within VCD, Tiered storage across NVMe and Object Storage |
|                                                        | ODCE                | SSZ    | Veeam B&R version 11                              | UI within VCD, Tiered storage across NVMe and Object Storage |
|                                                        | EDCE              | BSZ    | Veeam B&R version 11                              | UI within VCD, Tiered storage across NVMe and Object Storage |
| Backup as a Service - for VMs outside of AUCloud IaaS  | -                       | Global | Veeam service provider console (cloud connect) v6 | Tiered storage across NVMe and Object Storage                |
| Security Operations Centre as a Service                | PDCE               | Global | -                                                 | -                                                            |
|                                                        | ODCE and EDCE | Global | -                                                 | -                                                            |
| Sovereign Bridge (network connectivity)                | PDCE               | CSZ    | CDC - Connect & NextDC Axon                       | -                                                            |
|                                                        | PDCE               | SSZ    | CDC - Connect & NextDC Axon                       | -                                                            |
|                                                        | ODCE                | CSZ    | CDC - Connect & NextDC Axon                       | -                                                            |
|                                                        | ODCE                | SSZ    | CDC - Connect & NextDC Axon                       | -                                                            |
|                                                        | EDCE              | BSZ    | NextDC Axon                                       | -                                                            |
| Symmetric Key Agreement Platform (SKAP)                | -                       | Global | -                                                 | -                                                            |