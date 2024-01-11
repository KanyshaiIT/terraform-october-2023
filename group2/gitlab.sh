#! /bin/bash

sudo apt update
sudo apt upgrade -y
sudo reboot
sudo apt install -y ca-certificates curl openssh-server postfix
cd /tmp
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
less /tmp/script.deb.sh
sudo bash /tmp/script.deb.sh
sudo apt install -y gitlab-ce
sudo ufw status
sudo ufw allow http
sudo ufw allow https
sudo ufw allow OpenSSH
sudo ufw status
sudo nano /etc/gitlab/gitlab.rb
sudo gitlab-ctl reconfigure