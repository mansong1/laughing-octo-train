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

resource "aws_s3_bucket" "app_server" {
    bucket = "tf-test-bucket-mansong"
    acl    = "private"

  tags = {
    Name = "mansongBucket"
    Environment = "Staging"
  }
}