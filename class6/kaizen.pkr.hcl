packer {
  required_plugins {
    amazon = {
      version = " >= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "example" {
  ami_name      = "golden image {{timestamp}}"
  instance_type = "t2.micro"
  region        = "us-east-2"
  source_ami = "ami-0cd3c7f72edd5b06d"
  ssh_username = "ec2-user"
  ssh_keypair_name = "packer"
  ssh_private_key_file = "~/.ssh/id_rsa"

   run_tags = {
    Name = "kaizen"
  }
}

  #provide aws account number inside of the "" f.e.: 030635037147 (get it from aws console account)
# ami_users = {
#     ""
#     ""
# }
  #to copy this image to other regions
#   ami_regions = [
#     "us-east-1", 
#     "us-east-2",
#     "us-west-1"
#   ]
# }

build {
  name    = "learn-packer"
  sources = [
    "source.amazon-ebs.example"
  ]

  provisioner "shell" {
    script = "script.sh"
  }
 

 #to check if the instance work right (you can connect to instance and run command: sudo systemctl status httpd) and press enter to proceed.
 #if you dont need it you can delete this provisioner
  provisioner "breakpoint" {
    note = "Please verify"
  }
}











