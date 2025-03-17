---
title: Deploying and using the Kubernetes dashboard
description: Quick-start to deploy the Kubernetes dashboard and access from your workstation
---


## Overview

The kubernetes dashboard provides a high level overview of what is happening in your cluster. 
This document describes specifically how to access the kubernetes dashboard on clusters provisioned in AUCyber.
Deploying the Kubernetes Dashboard is [well described](https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/), this is a quick-start on AUCyber.

### Assumptions

1. Direct access to the Kubernetes API endpoint

2. `kubectl` is installed on your workstation

3. The cluster `kubeconfig` file is either at `~/.kube/config` or set via the `KUBECONFIG` environmental variable.  

## Steps

1. Deploy the dashboard using kubectl by using the example setup from the Kubernetes community:

   1. `kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml`

2. Configure a service account for the dashboard:

   1. Create a YAML file with the following content:

      ```yaml
      apiVersion: v1
      kind: ServiceAccount
      metadata:
        name: admin-user
        namespace: kubernetes-dashboard

      ```

   2. Apply the YAML using `kubectl apply -f ./my_yaml_1.yml`

3. Provide the service account with the correct RBAC to access the dashboard (via `kubectl apply`)

        ```yaml
        apiVersion: rbac.authorization.k8s.io/v1
        kind: ClusterRoleBinding
        metadata:
          name: admin-user
        roleRef:
          apiGroup: rbac.authorization.k8s.io
          kind: ClusterRole
          name: cluster-admin
        subjects:
        - kind: ServiceAccount
          name: admin-user
          namespace: kubernetes-dashboard
        ```

4. Create a JWT for the user to auth with the cluster.

   1. Note this step needs to be done on token expiry again!

   2. `kubectl -n kubernetes-dashboard create token admin-user`

5. On your workstation start the kube proxy `kubectl proxy`

   1. This will make the kubernetes API (and the dashboard) available on `http://localhost:8001`.

   2. The proxy is alive only while `kubectl proxy` is running.

6.  Access the dashboard at `http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/`

7.  Use the JWT to authenticate with a token when prompted in the dashboard UI.

## Risks

- The user created has broad access rights. This may not be appropriate for your requirements.


