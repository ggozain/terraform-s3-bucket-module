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
  region = var.aws_region
}

module "s3" {
  source = "/Users/gerardo.colina/Terraform-AWS-S3-Task/S3_Module"
  #bucket name should be unique
  bucket_name = "attempt-1"
}