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
  region  = "ap-southeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0d2f34c92aa48cd95"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}

