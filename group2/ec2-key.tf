data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "group-2" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.group-2.vpc_id]
  key_name = aws_key_pair.deployer.key_name


  tags = {
    Name = var.name_tag
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "group-2-key"
  public_key = file("~/.ssh/id_rsa.pub")
}