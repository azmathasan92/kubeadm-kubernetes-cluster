# Setup Kubernetes Cluster Using Kubeadm

### Steps On Master Node:
- Run the master-node.sh script file
- Save the kubeadm join command to bootstrab the worker nodes

### Steps On Worker Nodes (all worker nodes):
- Run the worker-node.sh script file
- Run the kubeadm join command which you have saved earlier

            `kubectl get nodes`

You have sucessfully created your kubernetes cluster
