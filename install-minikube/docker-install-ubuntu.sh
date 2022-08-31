#!/bin/bash
sudo update -y
sudo apt install docker.io -y
sudo systemctl start docker 
sudo usermod -aG docker $(whoami)
sudo newgrp docker
sudo systemctl restart docker
sudo systemctl enable docker
docker ps