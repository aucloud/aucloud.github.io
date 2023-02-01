---
title: SKAP SDKs
description: Information on the symmetric key agreement platform sdks including features and methods to access.
---

## Overview
SKAP utilised Arqit QuantumCloud™ SDKs for Kotlin/Java; C/C++ and Python.
The SDKs are the preferred mechanism to provision keys when not using a application provided by the SKAP service.
Each of the APIs comes with comprehensive API documentation and exemplar applications.

## Access to download
During onboarding clients will receive object storage connection details to download the current SDKs and supporting API documentation.

## Required tooling and versions

### Kotlin / Java

- Gradle (to utilise builds for exemplar applications)

### C / C++

- CMake (to utilise exemplar applications)
- On POSIX systems:
  - `libcurl`
  - `libssl`
  - `libcryptopp`
  - `libcrypto`
    - Typically packaged with `libssl`


### Python

- `pip` for installation management
  - Note that installing the arqit libraries will pull down a number of dependencies.


## SDK feature matrix

QuantumCloud™ feature matrix with current SDK versions.

| Features / SDK              | Kotlin / Java                    | C / C++                          | Python                                 |
| --------------------------- | -------------------------------- | -------------------------------- | -------------------------------------- |
| Supported SDK Version       | 2209.20220906.14                 | 2209.20220906.14                 | 2209.20220906.14                       |
| `QKEY` registration           | :material-check-circle:{ .good } | :material-check-circle:{ .good } | :material-check-circle:{ .good }       |
| `OTA_TLS` registration        | :material-check-circle:{ .good } | :material-check-circle:{ .good } | :material-check-circle:{ .good }       |
| `OTA_QUANTUM` registration    | :material-check-circle:{ .good } | :material-check-circle:{ .good } | :material-check-circle:{ .good }       |
| Key negotiation via sockets | :material-check-circle:{ .good } | :material-check-circle:{ .good } | :material-check-circle:{ .good }       |
| Group Key negotiation       | :material-close-circle:{ .bad }  | :material-close-circle:{ .bad }  | :material-check-circle:{ .good }[^1]   |
| Key Negotiation via `MQTT`    | :material-close-circle:{ .bad }  | :material-close-circle:{ .bad }  | :material-check-circle:{ .good }       |
| De-registration             | :material-check-circle:{ .good } | :material-check-circle:{ .good } | :material-check-circle:{ .good }       |

[^1]: Group key negotiation is currently beta