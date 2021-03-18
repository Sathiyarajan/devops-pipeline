resource "aws_key_pair" "best-ec2-instance" {
  key_name   = "best-ec2-instance"
  public_key = fileexists(var.PATH_TO_PUBLIC_KEY) ? file(var.PATH_TO_PUBLIC_KEY) : var.DUMMY_SSH_PUB_KEY
  lifecycle {
    ignore_changes = [public_key]
  }
}

