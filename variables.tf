variable "project_name" {
  default = "pavan-tf"
}

variable "ec2_key_name" {
  default = "pavan"   # your EC2 key pair name
}


vpc.tf
=========================

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.project_name}-vpc"
  }
}


