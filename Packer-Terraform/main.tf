data "aws_ami" "kaizen" {
  most_recent = true

  filter {
    name   = "name"
    values = ["golden image*"]
  }

  owners = ["self"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.kaizen.id
  instance_type = "t2.micro"
  availability_zone = "us-east-2a"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  key_name = aws_key_pair.deployer.key_name
  user_data = file("apache.sh")
  count = 3

  tags = local.common_tags
}

# output ec2 {
#   value = aws_instance.web.public_ip
# }
# #resource "aws_instance" "web" {
#   ami = "ami-id"
#   instance_type = "t2.micro"
#   availability_zone = "us-east-2c"

#   tags = {
#     Name = "HelloWorld"
#   }
# }
