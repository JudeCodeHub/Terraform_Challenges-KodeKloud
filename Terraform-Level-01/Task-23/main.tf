resource "aws_opensearch_domain" "xfusion_es" {
  domain_name    = "xfusion-es"
  engine_version = "OpenSearch_2.11"

  cluster_config {
    instance_type  = "t3.small.search"
    instance_count = 1
  }

  ebs_options {
    ebs_enabled = true
    volume_size = 10
    volume_type = "gp3"
  }

  tags = {
    Domain = "xfusion-es"
  }
}