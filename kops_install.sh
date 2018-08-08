#!/bin/bash
sudo snap install kubectl --classic
sudo curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
sudo chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops
sudo apt-add-repository universe
sudo apt-get update
sudo apt-get install -y software-properties-common python-pip
sudo pip install awscli