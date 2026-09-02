data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "datacenter_ec2" {
  ami           = data.aws_ami.latest_amazon_linux.id
  instance_type = "t2.micro"

  tags = {
    Name = "Nautilus-Datacenter-Node"
  }
}


resource "aws_cloudwatch_metric_alarm" "datacenter_alarm" {
  alarm_name          = "datacenter-alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300 # 5 minutes in seconds
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "This metric monitors EC2 instance CPU utilization exceeding 80%"

  dimensions = {
    InstanceId = aws_instance.datacenter_ec2.id
    }
}
