---
title: How to conduct a test failover
description: How to conduct a test failover
---

**How to conduct a test failover**

With test failover tasks, you can verify whether the data from the source is replicated correctly on the target site. The replication Data is deleted once the Test Failover has been performed

![Test Failover](./assets/test_failover_image.png)

**Conducting the test failover**

1. In the VMware Cloud Director Availability Portal, either form the **Incoming Replications** or from the **Outgoing Replications** pane, select the protected vApp that you want to test.

    ![Incoming Outgoing Replications](./assets/incoming_outgoing_replications.png)

1. Click Test Failover.

    ![Test Failover](./assets/Testfailover.jpg)

1. The Test Failover wizard opens.

    ![Test Failover Wizard](./assets/test_failover_wizard.png)

1. On the **Recovery Settings** page, use the options to configure the test task and click **Next**.

    ![Recovery Settings](./assets/recovery_settings.jpg)

1. On the Recovery Instance page, configure the recovery point in time and click **Next.**

    ![Options](./assets/options.jpg)
  
1. On the Ready to Complete page, review the test details and click **Finish** to initiate the Test Failover task.

    ![Finish](./assets/finish.png)

1. You can monitor the progress in the **Replications Task** pane.

    ![Replication Tasks Pane](./assets/replication_tasks_pane.png)

**Conducting the Test Cleanup**

1. From the **Incoming Replications** or the **Outgoing Replications** pane, you can conduct the test cleanup.

1. Select **Test Cleanup**

    ![Test Clean Up](./assets/Testcleanup.jpg)

1. Click **CLEANUP**

    ![Test Clean Up](./assets/test_cleanup_clean.png)

**Deleting Replications**

1. You can remove the replication by selecting the vApp or VM and clicking **Delete.**

    ![Delete Replication](./assets/delete_replication.jpg)

1. Confirm you wish to delete the selected replication by clicking **DELETE**

    ![Wish To Delete](./assets/wish_to_delete.png)
