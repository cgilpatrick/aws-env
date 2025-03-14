terraform {
  required_providers {
    aws = {
      source  = "opentofu/aws"
      version = "5.91.0"
    }
  }

  backend "s3" {
    bucket = "cg-aws-env-tf-state-bucket"
    key    = "aws-env/terraform/global"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Environment = var.environment
      Terraform = "True"
    }
  }
}