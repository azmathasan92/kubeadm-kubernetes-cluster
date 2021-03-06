echo "####################################################################"
echo "Release the hold on versions of kubeadm and kubelet:"
echo "####################################################################"

sudo apt-mark unhold kubeadm kubelet kubectl

echo "####################################################################"
echo "Install version 1.14.1 of kubeadm:"
echo "####################################################################"

sudo apt install -y kubeadm=1.14.1-00

echo "####################################################################"
echo "Verify the version of kubeadm:"
echo "####################################################################"

kubeadm version

echo "####################################################################"
echo "Plan the upgrade of all the controller components(Master node only):"
echo "####################################################################"

sudo kubeadm upgrade plan

echo "####################################################################"
echo "Upgrade the controller components(master node only):"
echo "####################################################################"

sudo kubeadm upgrade apply v1.14.1

echo "####################################################################"
echo "Upgrade kubectl:"
echo "####################################################################"

sudo apt install -y kubectl=1.14.1-00

echo "####################################################################"
echo "Upgrade the version of kubelet:"
echo "####################################################################"

sudo apt install -y kubelet=1.14.1-00

echo "####################################################################"
echo "Check Nodes"
echo "####################################################################"

kubectl get nodes
