terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.20.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  ## profile = "my-profile"
}

locals {
  mytag = "jimmy-local-name"
}

resource "aws_instance" "tf-ec2" {
  # ami = "ami-0cff7528ff583bf9a"
  # ami = "ami-042e8287309f5df03"
  ami = var.ec2_ami

  #   instance_type = "t2.micro"
  instance_type = var.ec2_type

  key_name = "firstkey"

  tags = {
    # "Name" = "created-by-tf"
    # "Name" = "created-by-tf-ubuntu"
    # "Name" = "${var.ec2_name}-instance"
    "Name" = "${ local.mytag }-comes-from-locals"
  }
}

resource "aws_s3_bucket" "tf-s3" {
  #   bucket = "terraform-jimmy-bucket-test-new"
  bucket = var.s3_bucket_name
  #   acl = "private"
}




