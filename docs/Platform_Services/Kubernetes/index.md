---
title: AUCloud Kubernetes Service
description: Documentation on AUCloud's Kubernetes offering, based on Tanzu Kubernetes Grid and VMware Cloud Director.
---



## Overview 
AUCloud is deploying self-service enterprise grade Kubernetes Infrastructure based on VMware Tanzu Kubernetes Grid.
This infrastructure will allow deployment of Kubernetes clusters within a VCD VDC.


## Dependencies

1. At least one NSX-T backed VDC
    1. Users who have an NSX-T backed VDC have access to Kubernetes cluster provisioning across our Enterprise and Official environments. 
    2. Protected environment users are asked to contact your CSM.
    3. If you are using a NSX-V backed VDC please contact support and/or your CSM to get access to an NSX-T backed VDC 

2. Free public IP address ranges
    1. Users are advised to have at least 3 public IPs available during initial testing of the Kubernetes Service
       1. One for a `SNAT` to enable internet access for the Kubernetes nodes.
       2. One for a virtual service for the Kubernetes API
       3. At least one for exposing services to the internet.

3. Access to a development environment with the core Kubernetes tools installed.
    1. [kubectl](https://kubernetes.io/docs/tasks/tools/)
    2. [helm3](https://helm.sh/docs/intro/install/)
    3. [podman](https://podman.io/getting-started/installation), [docker](https://docs.docker.com/get-docker/) or similar.

4. Access to an external container registry (e.g. [Docker Hub](https://hub.docker.com/) or [Github container registry](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry)) is recommended for initial testing.



## Getting started

- Read about [how to provision a cluster using the VCD UI](./provisioning_clusters_vcd_ui.md)
- Run through an 'end to end' example of [deploying WordPress](./deploying_example_wordpress_with_sql.md)
- Explore through our [FAQ](./faq.md)
