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

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id = aws_subnet.main1.id
  vpc_security_group_ids = [aws_security_group.group-2.id]
  key_name = aws_key_pair.deployer.key_name
  user_data = file("gitlab.sh")

}

output ec2 {
    value = aws_instance.web.public_ip
}
resource "aws_key_pair" "deployer" {
  key_name   = "group-2"
  public_key = file("~/.ssh/id_rsa.pub")

}