---
title: FAQ
description: Frequently asked questions on AUCyber's Kubernetes Service
---


### How much does my Kubernetes cluster cost?
The AUCyber Kubernetes services charges based on the underlying costs of the VMs provisioned to support the cluster.
No extra / hidden costs exist.

!!! note "Public IP consumption"
   Users should budget for extra public IP addresses when standing up new clusters with internet facing services.

### What is the difference between Docker and Kubernetes?
Docker is a containerization platform that allows developers to package their applications and dependencies into portable and isolated containers.
Kubernetes, on the other hand, is a container orchestration platform that automates the deployment, scaling, and management of containerized applications across a cluster of computers, providing features such as load balancing, service discovery, and self-healing. 

### What is the difference Containers and Docker?
Containers are a lightweight and portable form of virtualisation that enable you to package an application and its dependencies into a single, self-contained unit that can be easily moved between different computing environments.
Docker is one of many platforms including Podman and LXC/LDC that implement the OCI container specification.
Docker provides a life cycle that simplifies the creation, management, and distribution of containers by providing an  user interface and a suite of tools for building, sharing, and running containers.

### What is the difference between Tanzu and Kubernetes?
Tanzu is a brand name for a suite of products and services from VMware that help organizations build, run, and manage modern applications on Kubernetes.
AUCyber's Kubernetes service is based on VMware Tanzu Kubernetes Grid, which is a Kubernetes distribution that packages together open-source technologies and automation tooling to help you get up and running quickly with a production-ready Kubernetes cluster.


### What is the difference between a `node port` a `LoadBalancer` and an `Ingress`?
A good description of the differences can be found on the [Kubernetes documentation](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types).

A `NodePort` is a port on a worker node that is exposes a pod directly based on the host network. It provides no redundancy from a pod perspective, and is not recommended for production use. Users of AUCyber's Kubernetes service can use `NodePort` to expose services for testing purposes. To expose to the internet a user will need to create their own DNAT or virtual service.

A `LoadBalancer` is a service that exposes a pod via a load balancer. In AUCyber's Kubernetes service this is a virtual service that is created on the edge gateway. This provides redundancy from a pod perspective, and is recommended for production use. `LoadBalancer` services provide L4 load balancing, and can be used to expose services to the internet. 

 An `Ingress` is a service that exposes a pod via a load balancer, and provides L7 load balancing. In AUCyber's Kubernetes service this is a virtual service that is created on the edge gateway for common protocols to an ingress controller such as NGINX, Contour or Istio. The ingress controller provides L7 routing to the correct pod.

### What IP should I use for the Kubernetes API?

The Kubernetes service will create a 'virtual service' to load balance across the control plane member at the IP address provided. The two choices are:

1. A public address within your allocated IP range for the VDC which is *not* currently being used for a NAT. 
   1. You will need to create firewall rules to expose the API.
2. A RFC 1918 address, within a 'network' created behind the VDC edge gateway.
   1. This will allow private access from within the tenancy; or via an IPSec tunnel to the edge gateway.

### Why the Load Balancer not provisioning?
The most likely reason for a Load Balancer failing to provision is insufficient free public IPs.
By *Default* each load balanced service uses a separate public IP by default.
A free public IP is defined by an IP with no existing NAT rule applied to it, or virtual service bound to it.


### Can AUCyber's Kubernetes Service support Windows containers?
AUCyber's Kubernetes service uses Ubuntu 20.04 as the operating system for all nodes.
While Windows containers are [possible in Kubernetes](https://kubernetes.io/docs/concepts/windows/intro/), it requires worker nodes running [Windows Server](https://learn.microsoft.com/en-us/virtualization/windowscontainers/about/) which is not supported by AUCyber's service.


### How do I install the `tanzu` CLI on Apple silicon?
The `tanzu` CLI which is marked for x86 from AUCyber's current experience will run on mac os systems running apple silicon.

The *core* package in the CLI pack also includes additional CLI tools such as `imgpkg` and `ytt` from the open-source [Carvel](https://carvel.dev/) project.

Users, if they need access can install these packages, for Apple Silicon, using `brew` e.g.

```bash
brew tap vmware-tanzu/carvel
brew install imgpkg
imgpkg version
```

