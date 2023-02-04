terraform {
  required_version = "1.2.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.26.0"
    }
  }
  backend "s3" {
    region = "us-east-1"
    bucket = "tfstate-798134437613"
    key = "dev/03-data-sources-s3/terraform.tfstate"
  }
}
provider "aws" {
  region = "us-east-1"
}