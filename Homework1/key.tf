resource "aws_key_pair" "deployer" {
  key_name   = "my-key"
  public_key = file("~/.ssh/id_rsa.pub")
  }

output kaizenkeypair {
value = aws_key_pair.deployer.key_type
}

