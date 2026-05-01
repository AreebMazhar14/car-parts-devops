terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-south-1" 
}

resource "aws_instance" "car_parts_server" {
  # This is a fresh Ubuntu 2023 AMI for Mumbai
  ami           = "ami-07a00cf47dbbc844c" 
  
  # Changed to t3.micro which is widely accepted in Free Tier for Mumbai
  instance_type = "t3.micro"
  key_name      = "linux1234"
  tags = {
    Name = "Terraform-Managed-CarParts"
  }
}
