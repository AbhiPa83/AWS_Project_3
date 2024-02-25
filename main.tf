provider "aws" {
  region = "ap-south-1"
}

module "ec2" {
  source = "./module/ec2"
  ami = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace)
  aws_public_key = var.aws_public_key
}