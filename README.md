# kubeadm-kubernetes-cluster

Kubernetes (K8s) is an open-source system for automating deployment, scaling, and management of containerized applications.

**Kubeadm** is a tool built to provide kubeadm init and kubeadm join as best-practice “fast paths” for creating Kubernetes clusters.

**kubeadm** performs the actions necessary to get a minimum viable cluster up and running. By design, it cares only about bootstrapping, not about provisioning machines. 

**kubeadm** helps you bootstrap a minimum viable Kubernetes cluster that conforms to best practices. With kubeadm, your cluster should pass Kubernetes Conformance tests. Kubeadm also supports other cluster lifecycle functions, such as upgrades, downgrade, and managing bootstrap tokens.

Because you can install kubeadm on various types of machine (e.g. laptop, server, Raspberry Pi, etc.), it’s well suited for integration with provisioning systems such as Terraform or Ansible.

### kubeadm’s simplicity means it can serve a wide range of use cases:

- New users can start with kubeadm to try Kubernetes out for the first time.
- Users familiar with Kubernetes can spin up clusters with kubeadm and test their applications.
- Larger projects can include kubeadm as a building block in a more complex system that can also include other installer tools.

IN THIS REPOSITORY WE CAN PERFORM THE FOLLOWING TASK:
-----------------------------------------------------
- ### Setup Kubernetes Cluster
- ### Upgrade Kubernetes Cluster to Newer Version
- ### Maintain Kubernetes Cluster (Add, Delete, or drain nodes)
