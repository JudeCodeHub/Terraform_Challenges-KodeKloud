data "aws_ebs_volume" "xfusion_vol" {
  filter {
    name   = "tag:Name"
    values = ["xfusion-vol"]
  }
}

resource "aws_ebs_snapshot" "xfusion-vol-ss" {
  volume_id   = data.aws_ebs_volume.xfusion_vol.id
  description = "Xfusion Snapshot"

  tags = {
    Name = "xfusion-vol-ss"
  }
}