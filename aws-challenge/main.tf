terraform {
required_providers {
aws = {
source = "hashicorp/aws"
version = "~> 3.24.1"
}
}
required_version = ">= 0.15"
}
provider "aws" {
region = var.region
}
resource "aws_instance" "my_instance" {
ami = var.ami
instance_type = var.instance_type
tags = {
name = var.name
}
}
