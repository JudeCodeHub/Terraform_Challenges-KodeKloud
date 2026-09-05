# Add your code below
resource "null_resource" "s3_backup_and_delete" {
  provisioner "local-exec" {
    command = <<-EOT
      mkdir -p /opt/s3-backup/
      aws s3 sync s3://xfusion-bck-6903 /opt/s3-backup/
      aws s3 rb s3://xfusion-bck-6903 --force
    EOT
  }
}