# Set AWS as the provider 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.14.0"  
    }
  }
# Use S3 bucket called '915-terraform-backend' as Terraform Backend
  backend "s3" {
    bucket = "915-assignment-backend"
    key    = "assignment/tfstate"
    region = "us-east-1"
  }
}

# Setup the AWS Provider Block
provider "aws" {
  region  = var.aws_region
}


