terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}
provider "aws" {
  profile = "default"
  region  = "us-west-2"
}
resource "aws_instance" "app_server" {
  # ami points to an ubuntu image (these are unique per region)
  ami = "ami-830c94e3"
  # size of the machine is t2.micro
  instance_type = "t2.micro"
  # tag is metadata information
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
