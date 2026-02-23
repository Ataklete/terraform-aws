terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "section_03" {
  ami           = "ami-09256c524fab91d36"
  instance_type = "t2.micro"

  tags = {
    Name = "section_03-aws_instance"
  }
}