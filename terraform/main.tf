provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "yaml_is_not_your_friend" {
  ami                      = var.DATA.ami
  subnet_id     = var.DATA.subnet_id
  instance_type            = "t2.micro"
  tags = {
    Name = "testing"
  }
}