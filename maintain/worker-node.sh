echo "####################################################################"
echo "Get the Docker gpg key:"
echo "####################################################################"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "####################################################################"
echo "Add the Docker repository:"
echo "####################################################################"

sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo "####################################################################"
echo "Get the Kubernetes gpg key:"
echo "####################################################################"

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

echo "####################################################################"
echo "Add the Kubernetes repository:"
echo "####################################################################"

cat << EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

echo "####################################################################"
echo "Update your packages:"
echo "####################################################################"

sudo apt-get update

echo "####################################################################"
echo "Install Docker, kubelet, kubeadm, and kubectl:"
echo "####################################################################"

sudo apt-get install -y docker-ce=18.06.1~ce~3-0~ubuntu kubelet=1.13.5-00 kubeadm=1.13.5-00 kubectl=1.13.5-00

echo "####################################################################"
echo "Add the iptables rule to sysctl.conf:"
echo "####################################################################"

echo "net.bridge.bridge-nf-call-iptables=1" | sudo tee -a /etc/sysctl.conf

echo "####################################################################"
echo "Enable iptables immediately:"
echo "####################################################################"

sudo sysctl -p

echo "####################################################################"
echo "RUN THE KUBEADM JOIN COMMAND WHICH YOU HAVE COPIED EARLIER WITH SUDO"
echo "####################################################################"

