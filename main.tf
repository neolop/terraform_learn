terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = "sa-east-1"

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami                    = "ami-0faf2c48fc9c8f966"
  instance_type          = "t2.micro"
  
    tags = {
    Name = "terraform-example"
  }
}
