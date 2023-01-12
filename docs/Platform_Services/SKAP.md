---
title: Symmetric Key Agreement Platform
description: Symmetric Key Agreement Platform
---
## What and why Quantum Cloud ##

Quantum computing is rapidly acquiring heavy investment from state actors and global technology companies. Quantum Computing has the potential to break critical algorithms in public key cryptography much more efficiently, potentially allowing the recovery of a private key from the public key.

### What does public key cryptography do? ###

Public key cryptography (in its most common form) allows:

- A client / end user to get a public key from a server
- The client to validate this public key has been signed by a trusted source
- The client to use the public key to encrypt data to send to the server
- The server, the only location with the private key, to decrypt that data

Public key cryptography is computationally expensive. It is primarily used to negotiate for a symmetric key (e.g. AES256) which both sides use to encrypt and decrypt communications efficiently.

### Risks if Public Key cryptography was broken ###

- Attacker could easily impersonate servers.
- Attacker could retrospectively decrypt current communications in a 'capture now, decrypt later' attack.

### Risks to symmetric encryption if quantum computing was broken ###

- Increased risk of brute force from extended use of a particular key (e.g. entropy starvation of the key)
- Increased risks if a high throughput system does not have enough entropy to generate keys (e.g. keys are predictable)

## What does Quantum Cloud provide ##

Quantum Cloud provides a platform for the secure distribution, recycling and negotiation of symmetric keys where the centralised platform does not have sufficient visibility to see the key used between two parties.

- Quantum Cloud communicates with end clients with symmetric keys (or symmetric keys wrapped with PKI as appropriate)
- Quantum Cloud users setup a 'closed network' of validated and provisioned devices that are allowed to negotiate keys between each other
- The centralised platform provides:
  - Device identity and provisioning
  - Bootstrap keys
  - Quantum Random Entropy
- The entropy and core platform security are anchored by Quintessence Lab's HSM appliances, together with FIPS-140-2 Level 3 HSM's from Entrust

### How does Quantum Cloud work? ###

**1: Bootstrapping a device**

- Quantum Cloud operates on the principle of 'secure room bootstrapping' in which devices must be initially provisioned by out-of-band (OOB) distribution of keymat, either physically or by splitting across comms channels to decrease risk.
- Bootstrap devices can provision 'other' devices so this can be a one-off problem.

**2: Admitting a device to the network**
Once bootstrapped, devices need to be 'admitted' to the environment. This will allow pre-flight checking and allows separation of duties in secure environments.

**3: Entropy Augmentation**
Once within the network devices can ask the Quantum Cloud for entropy, provided by Quintessence Labs. This ensures that the device does not become entropy starved if it is generating symmetric keys.

**4: Key Negotiation and rotation**
Two endpoints within the network can negotiate keys between each other of a proprietary protocol developed by Arqit.

- The centralised platform is used to validate identity and is used to bootstrap communications between two endpoints
- Endpoints use key-ratcheting (stylistically similar to Signal / Wickr) to directly negotiate keys between each other
  - If endpoints cannot directly reach each other securely, proxies owned by tenants, such as MQTT can be used to negotiate keys
- Both Quantum-Cloud - endpoint and endpoint-endpoint keys are regularly refreshed using key-ratcheting to decrease the risk of brute-force attacks

These keys can then be used to secure other communications.

## What are the use cases? ##

The immediate use cases for Quantum Cloud are those where an OOB distribution of keys is required to ensure communications safety in a post quantum computing world.

### 1: Augmenting security in systems relying on Diffie-Hellman Key exchange ###

With the threats to PK a number of standard network security protocols are being augmented to support OOB key distribution, either as a replacement or to Augment existing PK based security.

- IPSec: RFC8784 allows for OOB keys specifically distributed to reduce the risk of Quantum Computing
  - Support already exists within IPSec libraries in FreeBSD, PFSense, Ubuntu, etc.
- MACSEC:
  - ETSI standard APIs can be used to negotiate layer 2 network security to protect all data and metadata across single network links

### 2. Replacing / Augmenting KEYMAT distribution to traditional link encrypters ###

Traditional link encrypters have a number of drawbacks:

- Capital Expense
- Operational costs:SKAP_recovered
  - Ongoing distribution of keys
  - Operational inefficiencies
- Form Factors
  - Unusable in a cloud environment

Quantum Cloud (with proper OOB boot-strapping) has the ability to provide a 'virtual key distribution link encrypter', in conjunction with either:

- The protocols in (1, above)
- Combined with existing physical link encrypters

This would allow the expansion of the symmetric key secured network to environments where is is currently impractical or not cost effective.

### 3. Replacing cryptography completely in low power / idiosyncratic environments ###

PKI, and even more so the post-quantum PK algorithms are computationally expensive. Given the low cost of symmetric key encryption Quantum Cloud can be used to:

1. Replace PK cryptography to reduce power consumption
2. Replace 'dumb', symmetric cryptography where currently used in low power environments (such as SATCOMM)
3. Run as an application layer cryptographic protocol where OS / firmware level constraints do not allow users to adjust cryptographic protocols (e.g. mobile devices)

### What Quantum Cloud will NOT do ###

- Replace Public Key Cryptography in environments where clients are un-trusted.
- **Completely** replace physical keymat distribution in the highest security environments. At least bootstrapping is required.

## What have AUCloud built? ##

Arqit's Quantum Cloud is provided in two form factors: Their public cloud; and a multi-tenant solution that can be deployed. AUCloud have deployed the multi-tenant solution within AUCloud's protected environment in CDC Fyshwick. This stack has been optimised to minimise the hardware cost if single tenant deployments are required and/or deployments within different security classifications.

## What is AUCloud building? ##

AUCloud is building a number of different deployment form-factors to allow the efficient use of Quantum Cloud.
