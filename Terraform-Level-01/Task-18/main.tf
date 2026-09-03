resource "aws_kinesis_stream" "datacenter_stream" {
  name             = "datacenter-stream"
  shard_count      = 1 
}