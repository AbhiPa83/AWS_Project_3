provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "testing_server" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.aws_public_key
}
