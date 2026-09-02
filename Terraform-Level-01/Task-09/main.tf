provider "aws" {
  region = "us-east-1"
}

resource "aws_ebs_volume" "datacenter-volume" {
  type              = "gp3"
  size              = 2
  availability_zone = "us-east-1a"

  tags = {
    Name = "datacenter-volume"
  }
}