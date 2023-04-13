---
title: Example deployment of WordPress and MySQL
description: Example deployment of a WordPress server with MySQL persistent backend
---

## Overview

In this example you will be creating the following;   

- A VCD network
- Configuring firewall and NAT rules
- Deploy and configure a management host
- Deploy a Kubernetes cluster
- Deploy a service to the Kubernetes instance
- Expose the deployed service to the internet

!!! warning "Security risk"
    This example deploys a FLAT network topology, and the worker node service VIP for the WordPress will be exposed to the internet. This type of network should not be used in production environment

### Success outcome

- Website / service available to the internet

### Prerequisites

- VCD tenancy
- VCD user account with administrative privileges
- At least one available public IP address
  - one for control plane (optional)
  - one for worker virtual service (required)

## Creating a network   

!!! warning "Networking"
    This example has created the simplest network rules possible to enable this example. Users should consider whether this is fit for purpose for their security needs.

- Log into VCD as a user with system administrator rights
- Navigate to "Networking"
- Select "NEW"
- Select "Organization Virtual Data Center"
- Select the virtual data center (example: `aucloud-testcases-vdc1`)
- Select "Routed" as the network type
- Select the edge connection (example: `aucloud-testcases-vdc1-edgw1`)
- Configure the "General" network settings
	- Type a name (example: `testcases01`)
	- Type a description (example: This is an example network)
	- Type a gateway (example: `10.10.1.1/24`)
  
!!! note "Network conflicts"
    please make sure no other networks conflict otherwise you will receive an error message.

- Configure a static pool
 
!!! note "static pool"   
    this will be used for the ephemeral, control plane, worker nodes, and management VMs


- Type an IP range (example: `10.10.1.100-10.10.1.200`) and add it
- Configure DNS
	- Type the primary DNS (example: `1.1.1.1`)
	- Type the secondary DNS (example `8.8.8.8`)
	- Type the DNS suffix (example `testcases.local`)
  
!!! note "Configure DNS"   
    In this example we use external DNS providers, but internal ones can be specified instead

- Ignore "Segment Profile Template" selection
- Finish configuration

## Configure the firewall and SNAT

In this example we will be creating and IPSet, firewall and NAT rules to allow guests on the previously created network internet access.

- Log into VCD as a user with system administrator rights, or a provider
- Navigate to "Networking"
- Navigate to "Edge Gateways"
- Navigate to "IP Sets"
- Select "NEW"
- Type a name (example: `testcases01-ipset`)
- Type a description (example: testcases01 pool members)
- Type the IP address range (example: `10.10.1.0/24`)
- Navigate to Firewall
- Select EDIT RULES
- Select "NEW ON TOP"
   - Type a name (example: ALLOW-testcases01-internet)
   - Select the following services to allow
    - DNS
	  - `DNS-UDP`
	  - `HTTP`
	  - `HTTPS`
  - Source `testcases01-ipset`
  - Destination `ANY`
- Navigate to NAT
- Select "NEW"
	- Type a name (example: `SNAT-internet-testcases01`)
	- Description (example: allow internet SNAT)
	- Type: `SNAT`
	- External IP (check with the little "I" for available IP's)
	- Internal IP (example: `10.10.1.0/24`)

This will enable the following IP range `10.10.1.0/24` internet access

## Deploy and configure a guest VM

In this example we will be deploying a ubuntu guest VM from an AUCloud provided template, installing a GUI, installing necessary tools to connect, configure and maintain a Kubernetes cluster on VCD

- Log into VCD as a user with system administrator rights, or a provider
- Navigate to "Applications"
- Under "Virtual Applications" select "NEW"
- Select "New vApp"
- Select the targe VDC
- Give it a name (example: ubuntu01vapp)
- Description (example: guest ubuntu machine for Kubernetes example)
- Select "ADD VIRTUAL MACHINE"
- Type a name (example: ubuntu01)
- Type a description (example: ubuntu guest for Kubernetes management)
- Select type, From Template
- Select Ubuntu20-Medium
- Storage policy, Performance (VDC Default)
- NICs;
   - Tick, "Connected"
   - Network adaptor, "VMXNET3"
   - Network (example: testcases01)
   - IP Mode, Static Manual
   - IP address (example: `10.10.1.150`)
- Create the Vapp / VM
- Open a console session to the new VM

!!! note "Username and password for template"   
    Default user name is: `administrator`   
    Password can be found under the description of the VM (not the Vapp)
       
- Run the following commands  

!!! warning "Change the default password"   
    Users should the default password by running `passwd` once logged into the guest VM 

    ```bash
    $ sudo apt update
    $ Y   # confirm
    $ sudo apt upgrade
    $ Y   # confirm
    $ sudo apt-get install ubuntu-desktop
    $ Y   # confirm
    $ sudo reboot
    ```   

- Log into the VM via the console and skip Online accounts
- Open the "terminal" app and run the following commands to install the kubernetes command line (`kubectl`) and Visual Studio code

    ```bash
    $ sudo snap install kubectl --classic    #(required)
    $ sudo snap install code --classic       #(optional)
    ```


!!! note "Screen Resolution"
    Recommend changing the screen resolution,	Right click on background and select Display Settings. Adjust accordingly

## Create a Kubernetes instance  

In this example we will be creating a Kubernetes cluster

!!! note "Ubuntu host"
    It's recommended that you use the recently created ubuntu host for this part, as you will need to download the kube config to this host later for Kubernetes management.

- Open the VCD tenancy
- Navigate More > Kubernetes Container Clusters
- Select "New"
- Type a "name" (example: kubetest01)
- Select a TKG version
- Select VDC network, and cluster network
    - VDC: `aucloud-testcases-vdc1`
    - VDC network: `testcases01`
- Control plan
    - Nodes: 3 (default for high availability)
    - Disk size: 20gb (default)
    - Sizing Policy: TKG small
    - Storage Profile: Performance
- Worker Pools
    - Name: worker-node-pool1
    - Nodes: 1 (default)
    - Disk size: 20 (default)
    - Sizing Policy: TKG small
    - Storage Profile: Performance
- Kubernetes Storage
	- Create Default Storage Class
	- Select, "Shared Named Disks"


	- Storage Class Name: default-storage-class-1 (default)
	- Reclaim policy: delete (default)
	- Filesystem: ext4 (default)
- Kubernetes Network
	- Kubernetes Pod CIDR: Leave default
	- Kubernetes Services CIDR: Leave default
	- Control Plan IP (optional): Leave default


!!! note "Shared Disks"
    failure to select shared named disks, will prevent worker node(s) access to data disks


!!! note "Control Plan IP"
    If you specify an IP address for the control plan this will create the VIP on that IP, ie if you set an internal IP it will **NOT** use an external IP address for the control plane.
		
- Deploy the cluster
- wait until cluster is "available"

## Connecting to Kubernetes

In this example we will be using the recently configured ubuntu management host to connect to the Kubernetes instance we have just created. You can alternatively use your own machine as long as you have Kubernetes CLI (`kubectl`) installed.

On the ubuntu guest VM:   

- Open the VCD tenancy   
- Navigate to "More" > "Kubernetes Container Clusters"   
- Select the recently created cluster   
- Select "Download Kube Config"   
- Open a terminal   
- Create a .kube folder under the user account   

   ```bash

    mkdir ~/.kube
    
    ```
- Move and rename the downloaded kube config file into the `~/.kube` folder

    ```bash

    mv ~/Downloads/kubconfig-kubetest01 ~/.kube/config

    ```

!!! note `KUBECONFIG`
    The `KUBECONFIG` environmental variable can be used to target a config file in a location other than `~/.kube/config`

- Verify connectivity 

    ```bash

    $ kubectl config get-contexts

    ## Returns
    CURRENT NAME                            CLUSTER     AUTHERINFO          NAMESPACE
    *       kubetest01-admin@kubetest01     kubetest01  kubetest01-admin


    $ kubectl get namespaces

    ## Returns
    NAME                                STATUS  AGE
    capi-kubeadm-bootstrap-system       Active  3h6m
    capi-kubeadm-control-plane-system   Active  3h6m
    capi-system                         Active  3h6m
    capvcd-system                       Active  3h6m
    cert-manager                        Active  3h6m
    default                             Active  3h11m
    kube-node-lease                     Active  3h11m
    kube-public                         Active  3h11m
    kube-system                         Active  3h11m
    kubetest01-ns                       Active  3h6m
    rdeprojector-system                 Active  3h6m
    tanzu-package-repo-global           Active  3h6m
    tanzu-system                        Active  3h6m
    tkg-system                          Active  3h6m
    tkg-system-public                   Active  3h6m
    tkr-system                          Active  3h6m

    ```

## Deploying WordPress and MySQL

In this example we will be modifying an example deployment from [kubernetes.io](https://kubernetes.io/docs/tutorials/stateful-application/mysql-wordpress-persistent-volume/)


```bash

~/sample-deployment
 ┣ kustomization.yaml
 ┣ mysql-deployment.yaml
 ┗ wordpress-deployment.yaml

```

- Create the sample-deployment folder `mkdir ~/sample-deployment`
- cd to the directory `cd ~/sample-deployment`
- Download the `mysql-deployment.yaml` and `wordpress-deployment.yaml` via
    - `curl -LO https://k8s.io/examples/application/wordpress/mysql-deployment.yaml`
    - `curl -LO https://k8s.io/examples/application/wordpress/wordpress-deployment.yaml`


- Download the [`kustomization.yaml`](./assets/kustomization.yaml)
  - or create the `kustomization.yaml` file
  - `vi /home/administrator/sample-deployment/kustomization.yaml`

  - add the following

    ```yaml

    secretGenerator:
    - name: mysql-pass
      literals:
      - password=YOUR_PASSWORD_HERE
    resources:
      - mysql-deployment.yaml
      - wordpress-deployment.yaml

    ```


   

- Apply and verify configuration:

    `kubectl apply -k ./`

- Verify secrets:

    `kubectl get secrets`

    ``` bash
    #output

    NAME                    TYPE        DATA    AGE
    mysql-pass-xxxxxxxx     Opaque      1       9s

    ```

- Verify Persistent Volume creation:

  `kubectl get pvc`

  ```bash
  NAME              STATUS      VOLUME      CAPACITY        ACCESS MODES        STORAGECLASS        AGE
  mysql-pv-claim    Bound       pvc-xxxxxx  20Gi            RWO                 standard            77s
  wp-pv-claim       Bound       pvc-xxxxxx  20Gi            RWO                 standard            77s

  ```


- Verify pods:

  `kubectl get pods`

  ```bash
  NAME                              READY   STATUS      RESTARTS    AGE
  wordpress-xxxxxx-xxxx             1/1     Running     0           12m
  wordpress-mysql-xxxxxxxxx-xxxx    1/1     Running     0           12m
  ```


- Verify Load Balancer service:

  `kubectl get services wordpress`

  ```bash
  
  NAME              TYPE            CLUSTER-IP      EXTERNAL-IP     PORT(S)         AGE
  kubernetes        ClusterIP       100.64.0.1      <none>          443/TCP         6h16m
  wordpress         LoadBalancer    100.66.85.26    185.61.141.35   80:30945/TCP    8m20s
  wordpress-mysql   ClusterIP       None            <none>          3306/TCP        8m20s
  ```

- Using the web browser navigate to the listed EXTERNAL-IP address for WordPress in this example `185.61.141.35` you should now see the word press setup page

!!! note "Firewall rules"
    The ubuntu management box we deployed in this example will have access to the above IP, for external access we will need to allow it through the firewall

### Exposing the service

In this example we will be exposing the ingress worker node VIP to the internet. To do this we need to identify the Load Balancer IP specified in VCD.

- Log into VCD as a user with system administrator rights, or a provider
- Navigate to "Networking"
- Navigate to "Edge Gateways"
- Navigate to NAT
- find the `DNAT` rule created by VCD for ingress service (example: `dnat-ingress-vs-wordpress-capvcdCluster:xxxxxx`)
  - identify the internal IP address for this rule (example: 192.168.8.2)

!!! note "Load balancer internal IP range"   
    by default load balancers have an internal range of 192.168.8.2/25

- Navigate to "IP Sets"
- Select "NEW"
- Type a name (example: `lb-ip`)
- Type a description (example: Load Balancer IP set)
- Type the IP address of the Load Balancer IP (example: `192.168.2.8`)
- Navigate to Firewall
- Select EDIT RULES
- Select "NEW ON TOP"
   - Type a name (example: `expose-wordpress`)
   - Select the following services to allow
	  -`HTTP`
  - Source `ANY`
  - Destination `lb-ip`

### Summary 

You have now created the following:

- A VCD network
- Configuring firewall and NAT rules
- Deploy and configure a management host
- Deploy a Kubernetes cluster
- Deploy a service to the Kubernetes instance
- Expose the deployed service to the internet
  