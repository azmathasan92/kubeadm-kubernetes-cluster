#Run this on master node

echo "#########################################################"
echo "Generate a new token:"
echo "#########################################################"

sudo kubeadm token generate >> token-name.txt

echo "#########################################################"
echo "Print the kubeadm join command to join a node to the cluster:"
echo "#########################################################"

sudo kubeadm token create `cat token-name.txt` --ttl 2h --print-join-command

echo "#########################################################"
echo "run the above join command to the new worker node which you want to add"
echo "#########################################################"
