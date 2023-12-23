resource "aws_key_pair" "homework-key" {
  key_name   = "homework-key"
  public_key = file("~/.ssh/id_rsa.pub")
  
  tags = {
    name = "homework-key"
  }
}