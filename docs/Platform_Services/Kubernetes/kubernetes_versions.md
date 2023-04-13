---
title: Supported Kubernetes versions
description: Supported Kubernetes versions for the AUCloud Kubernetes Service
---




## Overview
AUCloud's Kubernetes service is based on  [VMware's Tanzu Kubernetes Grid](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.5/vmware-tanzu-kubernetes-grid-15/GUID-release-notes.html), combined with the VMware's "[Container Service Extension](https://docs.vmware.com/en/VMware-Cloud-Director-Container-Service-Extension/4.0/VMware-Cloud-Director-Container-Service-Extension-Using-Tenant-4.0/GUID-C137B2C6-6BAB-43EB-B074-C379D3473AE8.html)".

The version of Kubernetes Grid currently supported is 1.5.4. [This page](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.5/vmware-tanzu-kubernetes-grid-15/GUID-release-notes.html) provides details of the component versions within the distribution.

Within the VCD environment all clusters are currently based on Ubuntu 20.04 and one of the following kubernetes API versions:

- 1.22.9
- 1.21.11
- 1.20.15

The Tanzu Kubernetes versions are enterprise distributions, and lag the open-source release train. It is *highly* recommended to use API version 1.22 or later as:
- It will have the longest life cycle of support from VMware
- 1.22 dropped a [number of APIs](https://kubernetes.io/blog/2021/07/14/upcoming-changes-in-kubernetes-1-22/) using 1.21 and below may introduce additional technical debt.


## Resources

- [Tanzu Kubernetes Release notes](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-releases/services/rn/vmware-tanzu-kubernetes-releases-release-notes/index.html)
- [Tanzu life cycle support policy](https://tanzu.vmware.com/support/lifecycle_policy)
- [3rd party -  CSE & TKG compatibility map](https://www.funkycloudmedina.com/2023/03/cse-tkg-and-tkr-release-mapping-table/)
- [Tanzu Kubernetes Grid 1.5.4 release notes](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.5/vmware-tanzu-kubernetes-grid-15/GUID-release-notes.html)