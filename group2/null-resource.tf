provider "aws" {
  region = var.region
}

resource "null_resource" "cluster" {
  triggers = {
    always_run = "${timestamp()}"
  }

  connection {
    host = element(aws_instance.group-2[*].public_ip, 0)
    type = "ssh"
    user = "ec2-user"
    private_key = file("~/.ssh/id_rsa")
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt upgrade -y",
      "sudo reboot",
      "sudo apt install -y ca-certificates curl openssh-server postfix",
      "cd /tmp",
      "curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh",
      "less /tmp/script.deb.sh",
      "sudo bash /tmp/script.deb.sh",
      "sudo apt install -y gitlab-ce",
      "sudo ufw status",
      "sudo ufw allow http",
      "sudo ufw allow https",
      "sudo ufw allow OpenSSH",
      "sudo ufw status",
      "sudo nano /etc/gitlab/gitlab.rb",
      "sudo gitlab-ctl reconfigure"
    ]
  }
}
