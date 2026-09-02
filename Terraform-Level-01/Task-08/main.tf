# Provision EC2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  vpc_security_group_ids = [
    "sg-379413694e7f7d777"
  ]

  tags = {
    Name = "devops-ec2"
  }
}

resource "aws_ami_from_instance" "devops-ec2-ami" {
  name = "devops-ec2-ami"
  source_instance_id = aws_instance.ec2.id
}