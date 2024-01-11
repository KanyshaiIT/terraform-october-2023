#!/bin/bash


sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd


wget https://releases.hashicorp.com/packer/1.10.0/packer_1.10.0_linux_amd64.zip
unzip packer_1.10.0_linux_amd64.zip
sudo chmod +x ~/packer
sudo mv packer /usr/local/bin