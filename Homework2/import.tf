resource "aws_instance" "hw2-ec2" {
  ami           = "ami-0ee4f2271a4df2d7d"
  instance_type = "t2.micro"

  tags = {
    Name = "hw-ec2"
  }
} 

resource "aws_security_group" "launch-wizard-1" {
  id = "sg-0e341d3c37941f570"

  tags = {
    name = "launch-wizard-1"
  }
}

#terraform import aws_instance.<instancename> <instanceid>
#terraform import aws_security_group.<name> <ggid>