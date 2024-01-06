provider "aws" {
  region = "us-east-2"  #var is for variable, variable name is region
}

resource "aws_key_pair" "deployer" {
    key_name = "kaizen-key"
    public_key = file("~/.ssh/id_rsa.pub")

    tags = {
        name = "kaizen-key"
        team = "devops"
    }
}
