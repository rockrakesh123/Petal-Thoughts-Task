terraform {
  backend "s3" {
    bucket  = "s3-medusa-bucket"
    region  = "us-east-1"
    key     = "ecs-fargate/terraform.tfstate"
    encrypt = true
  }
  
  required_version = ">=0.13.0"

  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}