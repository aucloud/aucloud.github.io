---
title: How to perform a reverse task
description: How to perform a reverse task
---

**How to perform a reverse task**

**Prerequisites**

Verify that you have performed a Failover task to the vApp before starting the Reverse task.  
 
**Procedure**

1. In the VMware Cloud Director Availability Portal, select the vApp that you want to reverse either from the Incoming Replications or from the Outgoing Replications page, and click Reverse. A Reverse pop-up window displays to Confirm the reverse operation.

1. You can monitor the progress of the task in the Replication Tasks pane.
  
**Results**

After the reverse task completes, the reversed replication overwrites the source vApp or virtual machine. The virtual machine now runs on the primary destination site with a workload protection at your primary source site.   

**Next Steps**

To run the workload from the original source site, perform a **Failover** back to the source site, test failover, pause the reversed replication, and edit the configuration, or migrate the vApp.