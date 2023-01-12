---
title: Configuration of logging on the ESG
description: Configuration of logging on the ESG
---

1. In the VMware Cloud Director _Virtual Datacenters_ dashboard, select the VDC you want to work with.

1. In the left navigation panel, click **Edges**.

    ![Edges](./assets/001.png)

1. Select the ESG for configuration, and click **Services**.

    ![Services](./assets/image.png)

1. Navigate to Edge Settings and select **EDIT SYSLOG SERVER.**

1. In the resultant window, enter the **IP address** of a host running software which can receive syslog messages (`Kiwi Syslog`, `Rsyslog`, `syslog-ng` etc).

    ![IPAddress](./assets/Picture1.jpg)

1. Once this has been configured, the ESG will generate syslog messages in response to certain actions defined by the user. These messages will be transmitted using UDP on port 514. Example logging actions include:

- **Firewall rule hits**

    ![Firewall](./assets/Picture2.jpg)

- **NAT rule hits**

    ![NAT](./assets/Picture4.jpg)

- **Load balancer actions**

    ![Load Balancer](./assets/Picture5.jpg)
