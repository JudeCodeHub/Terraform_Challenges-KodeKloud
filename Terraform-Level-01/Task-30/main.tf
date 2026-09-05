# Provision EC2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  vpc_security_group_ids = [
    "sg-a797e46e348344a66"
  ]

  tags = {
    Name = "xfusion-ec2"
  }
}