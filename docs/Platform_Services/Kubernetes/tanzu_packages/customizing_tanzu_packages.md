---
title: Customizing tanzu packages
description: Tanzu packages, based on Carvel, allows users to provision VMware validated software packages and templates into their clusters. This article shows how to customize the packages to suit your needs.
---
 

## Overview
This document describes how to customize tanzu packages deployments. This article uses [harbor](https://goharbor.io/) as an example. This article only covers the customization of the package deployment. For more information on how to install packages, see [Installing Tanzu Packages](tanzu_cli_install.md).


### Reference URLs
- [Harbor Registry](https://goharbor.io/)
- [VMware: Install Harbor into Tanzu Kubernetes Grid](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.5/vmware-tanzu-kubernetes-grid-15/GUID-packages-harbor-registry.html)
- [VMware: Installing and managing packages with the Tanzu CLI](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.5/vmware-tanzu-kubernetes-grid-15/GUID-packages-cli-reference-packages.html)

## Process




### Check package availability / get versions

```bash
tanzu package available list -n tanzu-package-repo-global

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
```bash
tanzu package installed list -n tanzu-package-repo-global
| Retrieving installed packages...
  NAME  PACKAGE-NAME  PACKAGE-VERSION  STATUS

```

### Try to install
Some packages require additional configuration. For example, harbor requires a password, and other variables, to be set. If you try to install a package without the required configuration, the installation will fail.

```bash
tanzu package install harbor --package-name harbor.tanzu.vmware.com  -n tanzu-package-repo-global --version 2.3.3+vmware.1-tkg.1
\ Installing package 'harbor.tanzu.vmware.com' 

 Installing package 'harbor.tanzu.vmware.com'

 Getting package metadata for 'harbor.tanzu.vmware.com'

 Creating service account 'harbor-tanzu-package-repo-global-sa'

 Creating cluster admin role 'harbor-tanzu-package-repo-global-cluster-role'

 Creating cluster role binding 'harbor-tanzu-package-repo-global-cluster-rolebinding'

 Creating package resource

 Waiting for 'PackageInstall' reconciliation for 'harbor'

 'PackageInstall' resource install status: Reconciling
| 'PackageInstall' resource install status: ReconcileFailed

Please consider using 'tanzu package installed update' to update the installed package with correct settings



Error: resource reconciliation failed: ytt: Error:
- library.eval: Evaluating library 'bundle/config': Evaluating starlark template:
    in <toplevel>
      harbor.yaml:13 | --- #@ template.replace(upstream_lib.with_data_values(downstream_values()).eval())

    reason:
     - assert.fail: fail: Harbor admin password should be provided
         in validate_harbor_admin_password
           28 |   values.harborAdminPassword or assert.fail("Harbor admin password should be provided")
         in validate_harbor
           112 |      validate_func()
         in <toplevel>
           120 | validate_harbor()
. Reconcile failed: Error (see .status.usefulErrorMessage for details)
Error: exit status 1

✖  exit status 1
```

The state of the package installation can be queried using `tanzu package installed get <package-name> -n <namespace> -o yaml`. The output will show any errors that occurred during the installation.

```bash
tanzu package installed get harbor -n tanzu-package-repo-global -o yaml

- conditions: '[{ReconcileFailed True  Error (see .status.usefulErrorMessage for details)}]'
  name: harbor
  package-name: harbor.tanzu.vmware.com
  package-version: 2.3.3+vmware.1-tkg.1
  status: 'Reconcile failed: Error (see .status.usefulErrorMessage for details)'
  useful-error-message: "ytt: Error: \n- library.eval: Evaluating library 'bundle/config':
    Evaluating starlark template: \n    in <toplevel>\n      harbor.yaml:13 | ---
    #@ template.replace(upstream_lib.with_data_values(downstream_values()).eval())\n\n
    \   reason:\n     - assert.fail: fail: Harbor admin password should be provided\n
    \        in validate_harbor_admin_password\n           28 |   values.harborAdminPassword
    or assert.fail(\"Harbor admin password should be provided\")\n         in validate_harbor\n
    \          112 |      validate_func()\n         in <toplevel>\n           120
    | validate_harbor()\n"
```

### Get the values file for the tanzu package.
Similar to helm, tanzu packages has the concept of a `values` file, variables that can be set to configure the package. The values file *schema* can be pulled using `tanzu package available get <package-name> --values-schema -o yaml`. 

However, the schema is abstracted and cannot be used directly. To pull the default value file ([as in](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.5/vmware-tanzu-kubernetes-grid-15/GUID-packages-harbor-registry.html)) the package must be pulled and the values file extracted from the package.

```bash
image_url=$(kubectl -n tanzu-package-repo-global get packages harbor.tanzu.vmware.com.2.3.3+vmware.1-tkg.1 -o jsonpath='{.spec.template.spec.fetch[0].imgpkgBundle.image}')
imgpkg pull -b $image_url -o /tmp/harbor-package-2.3.3
cp /tmp/harbor-package-2.3.3/config/values.yaml harbor-data-values.yaml
Pulling bundle 'projects.registry.vmware.com/tkg/packages/standard/repo@sha256:e3dd598b9790e1ce24330d69138db21e5b062f457d85e0aeadf619281ec937bc'
  Extracting layer 'sha256:07fa4073051c53bd30455fd217e1fd7237ca0643f628a71036aa4d48d0638c61' (1/1)

Locating image lock file images...
The bundle repo (projects.registry.vmware.com/tkg/packages/standard/repo) is hosting every image specified in the bundle's Images Lock file (.imgpkg/images.yml)

Succeeded
```

### Applying the values file 

After customization to apply the values file to your harbor install use:

```bash
tanzu package installed update harbor -n tanzu-package-repo-global --values-file harbor-data-values.yaml
```

If you are using a values file with a fresh install use:

```bash
tanzu package install harbor --package-name harbor.tanzu.vmware.com  -n tanzu-package-repo-global --version 2.3.3+vmware.1-tkg.1 --values-file harbor-data-values.yaml
```

