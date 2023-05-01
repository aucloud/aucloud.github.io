---
title: Tanzu packages
description: Tanzu packages allow users to install a set of supported software designed to help in kubernetes operations.
---

## Overview
Clusters provisioned into VMware Cloud Director via the UI have an integration with "Tanzu Packages".
Tanzu packages, based on [Carvel](https://carvel.dev/), allows users to provision VMware validated software packages and templates into their clusters.
Support for Tanzu packages is pre-installed into the clusters allowing ease use.


## Prerequisites
- An AUCloud Kubernetes service provisioned cluster
- The [`tanzu` CLI](https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-Grid/1.5/vmware-tanzu-kubernetes-grid-15/GUID-install-cli.html) installed into your development environment
  - Contact AUCloud support to get access to the latest `tanzu` binaries
  - 


## Find out more

- [Read about how to use the `tanzu` CLI to install packages](tanzu_cli_install.md)
- [Read about how to use `kapp` to install packages](kapp_to_install.md)
