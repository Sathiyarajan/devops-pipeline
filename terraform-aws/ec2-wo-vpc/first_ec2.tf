provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA35446ZIQC4TZHBP2"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
   ami = "ami-081bb417559035fe8"
   instance_type = "t2.micro"
}
