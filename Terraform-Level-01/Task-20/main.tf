resource "aws_ssm_parameter" "datacenter-ssm-parameter" {
    name = "datacenter-ssm-parameter"
    type = "String"
    value = "datacenter-value"
}