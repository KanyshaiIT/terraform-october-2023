#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y curl openssh-server ca-certificates
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
sudo apt-get install -y gitlab-ce
sudo ufw allow http
sudo ufw allow https
sudo ufw allow OpenSSH
sudo gitlab-ctl reconfigure



# sudo apt install ca-certificates curl openssh-server postfix tzdata perl -y
# cd /tmp
# curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
# less /tmp/script.deb.sh
# sudo bash /tmp/script.deb.sh
# sudo apt install gitlab-ce -y
# sudo ufw allow http
# sudo ufw allow https
# sudo ufw allow OpenSSH
# sudo nano /etc/gitlab/gitlab.rb
# sudo gitlab-ctl reconfigure


# sudo apt install ca-certificates curl openssh-server postfix tzdata perl -y
# cd /tmp
# curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
# sudo apt install gitlab-ce -y
# sudo gitlab-ctl reconfigure 
 