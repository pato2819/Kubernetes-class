#!/bin/bash
cd Kubernetes-class/
cd install-minikube/
sudo sh docker-install-ubuntu.sh 
mkdir /etc/docker
cat <<EOF | sudo tee /etc/docker/daemon.json
{
 "exec-opts": ["native.cgroupdriver=systemd"]
}
EOF
systemctl enable --now docker
usermod -aG docker ubuntu
systemctl restart docker