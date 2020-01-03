# Maintain Existing Kubernetes Cluster


Add Node To the Existing cluster:
----------------------------------
### Steps On Master Node:
- Run the add-worker-node.sh script file
- Save the kubeadm join command to bootstrab the new worker nodes

### Steps On Worker Nodes (all worker nodes):
- Run the worker-node.sh script file
- Run the kubeadm join command which you have saved earlier

            `kubectl get nodes`

You have sucessfully added new node to your kubernetes cluster


Remove Node from the Existing Cluster:
------------------------------------

          `kubectl delete node [node_name]`
        
Want to change something on node or any upgrade like Operation System on node and Dont want to schedule any POD to that node:
-----------------------------------------------------------------------------------------------------------
      `kubectl drain [node_name] --ignore-daemonsets`

**When your work will done on that node you can get back your node to ready state by this command:**

            `kubectl uncordon [node_name]`
            
                  `kubectl get nodes`
                  
