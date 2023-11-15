---
title: Securing IPSec with SKAP
description: Documentation on how to secure IPSec tunnels against quantum-computing decryption threats across WAN tunnels
tags:
    - IPSec
    - StrongSwan
---

## Overview
IPSec is currently the most approachable network protocol to be secured with the SKAP platform.
[RFC-8784](https://datatracker.ietf.org/doc/html/rfc8784) extends the IPSec protocol to provide a mechanism to inject symmetric keys 'out of band' to the Diffie-Hellman key-exchange.

At a high level it can described as:

1. Diffie-Hellman key exchange occurs as expected.
2. On each endpoint a number of 'Post-quantum Pre-shared Keys' (PPKs) exist.
3. A mutually acceptable PPK are negotiated.
4. the PPK as a secondary transform *in addition to* the standard IPSec cryptography.

Two implementations have been tested with QuantumCloud:

1. [StrongSwan](https://docs.strongswan.org/docs/5.9/index.html) library, the default IPSec implementation included in many linux distributions including Ubuntu and Centos.
2. [Fortinet FortiOS (Beta)](https://www.fortinet.com/content/dam/fortinet/assets/alliances/sb-fortinet-and-arqit-vpn-integration.pdf) integration with Fortinet's physical and virtual Firewall products.

### StrongSwan / LibreSwan configuration
StrongSwan has two mechanisms by which PPKs can be injected into the configuration:

1. [StrongSwan configuration](https://docs.strongswan.org/docs/6.0/swanctl/swanctlConf.html) files can have PPKs injected in (either by hand or by integration.
   1. This requires manual reload is required.
2. [StrongSwan VICI](https://docs.strongswan.org/docs/5.9/plugins/vici.html)
    The vici plugin can allow applications to integrate directly into StrongSwan.

Both of these methods can be used, via custom integration with SKAP.

### QuantumCloud™ Network Adapter & Fortinet (FortiOS) network appliances.
Fortinet and Arqit have [announced](https://www.fortinet.com/content/dam/fortinet/assets/alliances/sb-fortinet-and-arqit-vpn-integration.pdf) an integration between FortiOS and the QuantumCloud platform.

!!! note "Pre release"
    FortiOS integration is currently pre-release.
    Use of the FortiOS requires the use of custom firmware on your physical or virtual network appliance.

The integration uses a new [ETSI standard API](https://www.etsi.org/deliver/etsi_gs/QKD/001_099/014/01.01.01_60/gs_qkd014v010101p.pdf) provides the integration mechanism a pre-built "Network Adapter" application is provided which integrates with FortiOS.
