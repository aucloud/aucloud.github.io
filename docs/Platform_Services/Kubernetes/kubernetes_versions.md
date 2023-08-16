---
title: Supported Kubernetes versions
description: Supported Kubernetes versions for the AUCloud Kubernetes Service
---
## Overview

AUCloud's Kubernetes service is based on  [VMware's Tanzu Kubernetes Grid](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.6/vmware-tanzu-kubernetes-grid-16/GUID-release-notes.html), combined with the VMware's "[Container Service Extension](https://docs.vmware.com/en/VMware-Cloud-Director-Container-Service-Extension/4.0.3/rn/vmware-cloud-director-container-service-extension-403-release-notes/index.html)".

The version of Kubernetes Grid currently supported is [1.5.4](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.5/vmware-tanzu-kubernetes-grid-15/GUID-release-notes.html) and [1.6.1](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.6/vmware-tanzu-kubernetes-grid-16/GUID-release-notes.html) click the product version to view details of the component versions within the distribution.

### Tanzu Kubernetes version

The following kubernetes versions are available in following AUCloud sovereignty Zones, CSZ (Canberra), SSZ (Sydney), BSZ (Brisbane), MSZ (Melbourne)  

|Template name                                 | Kubernetes version | TKG Product Version| Comment          |
|:---                                          |:---                |:---                |                  |
|Ubuntu 20.04 and Kubernetes v1.23.10+vmware.1 | v1.23.10           | tkg 1.6.1          | added 2023-06-01 |
|Ubuntu 20.04 and Kubernetes v1.22.13+vmware.1 | v1.22.13           | tkg 1.6.1          | added 2023-06-01 |
|Ubuntu 20.04 and Kubernetes v1.21.14+vmware.1 | v1.21.14           | tkg 1.6.1          | added 2023-06-01 |
|                                              |                    |                    |                  |
|Ubuntu 20.04 and Kubernetes v1.22.9+vmware.1  | v1.22.9            | tkg 1.5.4          |                  |
|Ubuntu 20.04 and Kubernetes v1.21.11+vmware.1 | v1.21.11           | tkg 1.5.4          |                  |
|Ubuntu 20.04 and Kubernetes v1.20.15+vmware.1 | v1.20.15           | tkg 1.5.4          |                  |

The Tanzu Kubernetes versions are enterprise distributions, and lag the open-source release train. It is *highly* recommended to use API version 1.23 or later as:

- It will have the longest life cycle of support from VMware  
- 1.23 dropped a [number of APIs](https://kubernetes.io/blog/2021/12/07/kubernetes-1-23-release-announcement/) using 1.23 and below may introduce additional technical debt.

Please see upgrading clusters for information on upgrading Kubernetes versions, [here](./upgrading_clusters_vcd_ui.md)

### Tanzu Kubernetes component versions

| Zone| Component| version | comment|
|:--- |:---      |:---     |:---    |
| CSZ | CAPVCD   | 1.0.1   |        |
| CSZ | CPI      | 1.3.0   |        |
| CSZ | CSI      | 1.3.2   |        |
|     |          |         |        |
| SSZ | CAPVCD   | 1.0.1   |        |
| SSZ | CPI      | 1.3.0   |        |
| SSZ | CSI      | 1.3.2   |        |
|     |          |         |        |
| BSZ | CAPVCD   | 1.0.1   |        |
| BSZ | CPI      | 1.3.0   |        |
| BSZ | CSI      | 1.3.2   |        |
|     |          |         |        |
| MSZ | CAPVCD   | 1.0.1   |        |
| MSZ | CPI      | 1.3.0   |        |
| MSZ | CSI      | 1.3.2   |        |

Please see upgrading cluster components for information on upgrading Kubernetes components, [here](./upgrading_component_versions.md)

## Resources

- [Tanzu Kubernetes Release notes](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-releases/services/rn/vmware-tanzu-kubernetes-releases-release-notes/index.html)
- [Tanzu life cycle support policy](https://tanzu.vmware.com/support/lifecycle_policy)
- [3rd party -  CSE & TKG compatibility map](https://www.funkycloudmedina.com/2023/03/cse-tkg-and-tkr-release-mapping-table/)
- [Tanzu Kubernetes Grid 1.5.4 release notes](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.5/vmware-tanzu-kubernetes-grid-15/GUID-release-notes.html)
