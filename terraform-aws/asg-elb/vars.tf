variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "best-ec2-instance"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "best-ec2-instance.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-south-1 = "ami-081bb417559035fe8"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

