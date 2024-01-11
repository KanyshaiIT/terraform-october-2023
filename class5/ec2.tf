resource "aws_instance" "web" {
  ami = "ami-0cd3c7f72edd5b06d"
  instance_type = "t2.micro"
  availability_zone = "us-east-2a"
  key_name = aws_key_pair.deployer.key_name

connection {
    host = element(aws_instance.web[*].public_ip, 0)
    type = "ssh"
    user = "ec2-user"
    private_key = file("~/.ssh/id_rsa")
  }

  provisioner "file" {
    source = "./main.tf"
    destination = "./hello.tf"    
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "hello"
  public_key = file("~/.ssh/id_rsa.pub")
}