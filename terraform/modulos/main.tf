terraform {
  required_version = "1.2.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.26.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
resource "random_pet" "this" {
  length = 5
}
module "bucket" {
  source = "./s3_module"
  name   = random_pet.this.id
}
resource "random_pet" "isso" {
  length = 3
}
resource "aws_iam_policy" "policy" {
  name = "policy-test-only-read"
  path = "/"
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "PublicReadGetObject",
        "Effect" : "Allow",
        "Action" : [
          "s3:GetObject"
        ],
        "Resource" : [
          "arn:aws:s3:::${random_pet.isso.id}/*"
        ]
      }
    ]
  })
}
module "website" {
  source = "./s3_module"
  name   = random_pet.isso.id
  files  = "${path.root}/website"
  website = {
    index_document = "index.html"
    error_document = "error.html "
  }
}