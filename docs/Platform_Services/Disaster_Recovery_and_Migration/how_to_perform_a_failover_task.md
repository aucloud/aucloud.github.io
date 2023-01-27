---
title: How to perform a failover task
description: How to perform a failover task
---

## Overview

You perform a disaster recovery operation of a Virtual Machine to the Target site if the protected source is unavailable.  

## Prerequisites

Verify that the vApp containing the Virtual Machine is protected on your destination site.  

## Performing a failover task

1. In VMware Cloud Director Availability Portal, either from the **Incoming Replications** or from the **Outgoing Replications** pane, select the virtual machine that you wish to failover, click **All Actions** and then click **Failover**. The **Failover** wizard opens.

1. In the Recovery Settings tab, use the options to configure the task and click **Next.**

	| Option | Descriptions |
	| ---    | ---          |
	| Consolidate VM Disks | When enabled, the failover operation takes longer to complete but allows for a better performance of the recovered VM |
	| Power on recovered vApps | Select this option, to power on the virtual machine on the destination site |
	| Network settings | <ul><li>Select the Apply preconfigured network settings on failover option, so that the network configured during the virtual machine replication is assigned</li><li>Select the Connect all VMs to network option and select a network from the drop-down menu</li></ul><p></p>The replicated virtual machine connects to the network that you selected |

1. On the Recovery Instance page, configure the recovery point in time and click Next.

1. On the Ready to Complete page, review the test details and click Finish to initiate the Failover task. You can monitor the progress of the task either in the Incoming Replications or the Outgoing Replications pane.

    - The failed over vApp is running on your destination site. The vApp is no longer protected upon the task completion.

1. What to do next: You can reverse the vApp back to your source site environment or delete the vApp replication. If you delete the replication, it is no longer protected by the solution, and disappears from the vApps list.