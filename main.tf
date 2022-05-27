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
  region  = "eu-west-2"
}

resource "aws_instance" "app_server" {
  #ami           = "ami-0d729d2846a86a9e7"
  ami           = "ami-01bb5fb90f6e8dc9d"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
    #Name = "ExampleAppServerInstance"
  }
}