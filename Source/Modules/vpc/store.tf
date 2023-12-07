#ssm parameter resource code to securely store VPC, public subnets' 1 & 2 & Private subnet id's

resource "aws_ssm_parameter" "vpc" {
  name  = format("/%s/%s", "tfproject", "vpc")
  type  = "String"
  value = aws_vpc.main.id
}

resource "aws_ssm_parameter" "public_sn1" {
  name  = format("/%s/%s", "tfproject", "public_sn1")
  type  = "String"
  value = aws_subnet.public_sn1.id
}

resource "aws_ssm_parameter" "public_subnet2" {
  name  = format("/%s/%s", "tfproject", "public_sn2")
  type  = "String"
  value = aws_subnet.public_sn2.id
}

resource "aws_ssm_parameter" "private_sn" {
  name  = format("/%s/%s", "tfproject", "private_sn")
  type  = "String"
  value = aws_subnet.private_sn.id
}

