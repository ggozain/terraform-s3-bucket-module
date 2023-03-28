terraform {
  cloud {
    organization = "gozain-lab"
    workspaces {
      name = "terraform"
    }
  }

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
  source = "/Users/gerardo.colina/GITPersonal/terraform-s3-bucket-module/S3_Module"
  bucket_name = "prefix-1"
}