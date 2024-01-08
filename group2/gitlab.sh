#!/bin/bash

sudo apt update
sudo apt install ca-certificates curl openssh-server postfix tzdata perl
### You will likely have some of this software installed already. 
###For the postfix installation, select Internet Site when prompted. 
###On the next screen, enter your server’s domain name to configure how the system will send mail.

##Now that you have the dependencies installed, you’re ready to install GitLab.


#move into the /tmp directory:
cd /tmp 

#download the installation script:
curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
#or
#less /tmp/script.deb.sh

#run the installer
sudo bash /tmp/script.deb.sh
#install the GitLab application
sudo apt install gitlab-ce



#open GitLab’s configuration file
sudo vi /etc/gitlab/gitlab.rb