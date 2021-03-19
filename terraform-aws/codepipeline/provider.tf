provider "aws" {
  region = var.AWS_REGION
  access_key = ""
  secret_key = ""
}

data "aws_availability_zones" "available" {
}

data "aws_caller_identity" "current" {
}
