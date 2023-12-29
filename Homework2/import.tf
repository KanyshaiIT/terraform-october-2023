resource "aws_instance" "hwork-2" {
  ami           = "ami-0ee4f2271a4df2d7d"
  instance_type = "t2.micro"

  tags = {
    Name = "hwork-2"
  }
} 

resource "aws_security_group" "launch-wizard-1" {
  id = "sg-08729ee4207ded807"

  tags = {
    name = "launch-wizard-1"
  }
}

#terraform import aws_instance.<instancename> <instanceid>
#terraform import aws_security_group.<name> <ggid>
