resource "aws_cloudformation_stack" "devops_stack" {
  name = "devops-stack"

  template_body = jsonencode({
    AWSTemplateFormatVersion = "2010-09-09"
    Description              = "CloudFormation stack for S3 bucket with versioning"
    Resources = {
      S3Bucket = {
        Type = "AWS::S3::Bucket"
        Properties = {
          BucketName = "devops-bucket-23781"
          VersioningConfiguration = {
            Status = "Enabled"
          }
        }
      }
    }
  })
}