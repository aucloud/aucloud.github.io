---
title: Deploying Tanzu  packages using the Tanzu CLI
description: Using the tanzu cli to deploy supported tanzu packages into TKG Kubernetes clusters
---

## Overview
This document describes how to use the `tanzu` CLI to install validated packages into a Kubernetes cluster.
If you are 


!!! caution "Preconfigured namespaces"
    Tanzu packages have two namespaces 
    
    1. `tkg-system` for running control plane relevant components
    2. `tanzu-package-repo-global` designed for user 
    A number of commands below require the namespace and may generate inconsistent results without referencing the existing installations.



### Step 1: Check what is installed.
The kubernetes cluster comes with packages pre-configured into two namespaces `tkg-system` and `tanzu-package-repo-global`. 
Users can use `tanzu package installed list` appended with the namespace `-n MYNAMESPACE` to interrogate what has been installed e.g. 

```bash
tanzu package installed list -n tkg-system

  NAME                           PACKAGE-NAME                              PACKAGE-VERSION                STATUS
  antrea                         antrea.tanzu.vmware.com                   1.2.3+vmware.4-tkg.1-advanced  Reconcile succeeded
  metrics-server                 metrics-server.tanzu.vmware.com           0.5.1+vmware.1-tkg.1           Reconcile succeeded
  secretgen-controller           secretgen-controller.tanzu.vmware.com     0.7.1+vmware.1-tkg.1           Reconcile succeeded
  tanzu-addons-manager           addons-manager.tanzu.vmware.com           1.5.0+vmware.1-tkg.6           Reconcile succeeded
  tanzu-core-management-plugins  core-management-plugins.tanzu.vmware.com  0.11.6-1-g90440e2b+vmware.1    Reconcile succeeded
  tanzu-featuregates             featuregates.tanzu.vmware.com             0.11.6-1-g90440e2b+vmware.1    Reconcile succeeded
```

The `tanzu-package-repo-global` namespace, by default will have no additional packages installed.


### Step 2: See what you can install.
User installed packages *should* use the `tanzu-package-repo-global` namespace by default. Use `tanzu package available list`

```bash
tanzu package available list  -n tanzu-package-repo-global
\ Retrieving available packages... 


  NAME                           DISPLAY-NAME  SHORT-DESCRIPTION                                                                                           LATEST-VERSION
  cert-manager.tanzu.vmware.com  cert-manager  Certificate management                                                                                      1.5.3+vmware.2-tkg.1
  contour.tanzu.vmware.com       contour       An ingress controller                                                                                       1.18.2+vmware.1-tkg.1
  external-dns.tanzu.vmware.com  external-dns  This package provides DNS synchronization functionality.                                                    0.10.0+vmware.1-tkg.1
  fluent-bit.tanzu.vmware.com    fluent-bit    Fluent Bit is a fast Log Processor and Forwarder                                                            1.7.5+vmware.2-tkg.1
  grafana.tanzu.vmware.com       grafana       Visualization and analytics software                                                                        7.5.7+vmware.2-tkg.1
  harbor.tanzu.vmware.com        harbor        OCI Registry                                                                                                2.3.3+vmware.1-tkg.1
  multus-cni.tanzu.vmware.com    multus-cni    This package provides the ability for enabling attaching multiple network interfaces to pods in Kubernetes  3.7.1+vmware.2-tkg.2
  prometheus.tanzu.vmware.com    prometheus    A time series database for your metrics                                                                     2.27.0+vmware.2-tkg.1

```

!!! warning "Incompatible packages"
    The Tanzu packages list for the `tkg-system` namespace includes packages designed to operate with VMware's vSphere.
    The following packages should not be used as they have vcd equivalents installed already:

    - `vsphere-cpi.tanzu.vmware.com`
    - `vsphere-csi.tanzu.vmware.com` 
    - `load-balancer-and-ingress-service.tanzu.vmware.com`

### Step 3: Pick a  package to install 
The tanzu packages all have configuration details that can be customized. In the case of `fluent-bit` shown below we do not apply the customization.
Use `tanzu package install` with the following arguments:

`tanzu package install Friendly-name --package-name name-from-package-list -n namespace-of-package-list --version version-tag`

which results in:

```bash
tanzu package install fluent-bit --package-name fluent-bit.tanzu.vmware.com  -n tanzu-package-repo-global --version 1.7.5+vmware.2-tkg.1

\ Installing package 'fluent-bit.tanzu.vmware.com' 

 Installing package 'fluent-bit.tanzu.vmware.com'

 Getting package metadata for 'fluent-bit.tanzu.vmware.com'

 Creating service account 'fluent-bit-tkg-system-sa'

 Creating cluster admin role 'fluent-bit-tkg-system-cluster-role'

 Creating cluster role binding 'fluent-bit-tkg-system-cluster-rolebinding'

 Creating package resource

 Waiting for 'PackageInstall' reconciliation for 'fluent-bit'

 'PackageInstall' resource install status: Reconciling

 'PackageInstall' resource install status: ReconcileSucceeded

 'PackageInstall' resource successfully reconciled


 Added installed package 'fluent-bit'

```

### Step 4: Validate the install


```bash
tanzu package installed list -n tanzu-package-repo-global
\ Retrieving installed packages... 


  NAME                           PACKAGE-NAME                              PACKAGE-VERSION                STATUS
  fluent-bit                     fluent-bit.tanzu.vmware.com               1.7.5+vmware.2-tkg.1           Reconcile succeeded
```

Users can also use `kubectl get pods -A` to validate that the pods have being provisioned.