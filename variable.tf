variable "ami" {
  description = "This will pickup the ami ID"
}

variable "instance_type" {
  description = "This will pick up the instance type e.g. t2.micro"
    type = map(string)

  default = {
    "Dev" = "t2.micro"
    "Test" = "t2.medium"
    "Prod" = "t2.large"
  }
}

variable "aws_public_key" {
  description = "This key will used to access the server"
}