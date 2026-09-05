# Provision EC2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  subnet_id     = "subnet-e19c812e91608cbb9"
  vpc_security_group_ids = [
    "sg-56a6b7286f6d44d8b"
  ]

  tags = {
    Name = "nautilus-ec2"
  }
}

# Provision Elastic IP
resource "aws_eip" "ec2_eip" {
  tags = {
    Name = "nautilus-ec2-eip"
  }
}

# Attach Elastic IP to EC2 Instance
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.ec2.id
  allocation_id = aws_eip.ec2_eip.id
}