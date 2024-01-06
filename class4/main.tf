provider "aws" {
  region = var.region  #var is for variable, variable name is region
}

resource "aws_key_pair" "deployer" {
    key_name = "kaizen-key"
    public_key = file("~/.ssh/id_rsa.pub")
}

variable region {
    type = string
    default = ""
}    #terraform apply -var-file virginia.tfvars
  
#terrform workspace
