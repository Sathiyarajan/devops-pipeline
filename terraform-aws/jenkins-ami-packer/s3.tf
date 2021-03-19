resource "aws_s3_bucket" "terraform-sathya" {
  bucket = "terraform-sathya-${random_string.random.result}"
  acl    = "private"

  tags = {
    Name = "Terraform state"
  }
}

resource "random_string" "random" {
  length  = 8
  special = false
  upper   = false
}

