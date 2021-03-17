resource "aws_s3_bucket" "b" {
  bucket = "sathyadev-bucket-c29df1"
  acl    = "private"

  tags = {
    Name = "sathyadev-bucket-c29df1"
  }
}

