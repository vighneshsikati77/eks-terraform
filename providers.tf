terraform {
  required_version = ">= 1.3, < 2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.37"  # stable and compatible with EKS module
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

