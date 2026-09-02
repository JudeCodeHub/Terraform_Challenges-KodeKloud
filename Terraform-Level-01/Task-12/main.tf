resource "aws_s3_bucket" "datacenter" {
  bucket = "datacenter-s3-24561"
}
resource "aws_s3_bucket_public_access_block" "datacenter" {
  bucket = aws_s3_bucket.datacenter.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "datacenter" {
  bucket = aws_s3_bucket.datacenter.id
  acl    = "public-read"
}