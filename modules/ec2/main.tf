variable "region" {
  description = "AWS Region"
}

variable "subnet_id" {
  description = "Subnet ID"
}

variable "instance_type" {
  description = "EC2 Instance Type"
}

variable "ami_id" {
  description = "AMI ID"
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "ExampleInstance"
  }
}
