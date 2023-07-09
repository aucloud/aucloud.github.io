---
title: Known limitations
descriptions: Known limitations and work arounds for the AUCloud portal
tags: 
    - portal
---


## Accessing the portal from within a NSX-T backed tenancy
Users by default are not able to access the AUCloud portal from within an NSX-T backed Virtual Data Centre.
This exclusion has been put in place to ensure interoperability of VMware Cloud Director APIs for Kubernetes services.
The VMware Cloud Director API endpoints remain functional for API key and bearer token based authentication.

### Clients with a requirement to access the portal from within a tenancy
This exclusion can be adjusted by AUCLoud. If you have a strict requirement to access the portal from within your NSX-T backed Virtual Data Centre contact [AUCloud support](../support/index.md).






