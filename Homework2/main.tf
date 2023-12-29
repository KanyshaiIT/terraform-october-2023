data "aws_ami" "amzn-linux-2023-ami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_instance" "web1" {
  ami           = "ami-0ee4f2271a4df2d7d"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.Homework-sg.id]
  key_name = aws_key_pair.homework-key.key_name
  user_data = file("apache.sh")

  tags = {
    Name = "Homework-ec2"
  }
}

output ec2 {
    value = aws_instance.web.public_ip
}