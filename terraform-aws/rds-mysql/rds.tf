provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA35446ZIQC4TZHBP2"
  secret_key = "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"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 5
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "masterpassword055"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = "true"
}

