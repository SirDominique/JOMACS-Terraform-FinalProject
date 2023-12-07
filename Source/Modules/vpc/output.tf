output "load_balancer" {
  value = aws_lb.tfproject_lb.dns_name
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_sn1" {
  value = aws_subnet.public_sn1.id
}

output "public_sn2" {
  value = aws_subnet.public_sn2.id
}

output "private_sn" {
  value = aws_subnet.private_sn.id
}


output "instance_sg" {
  value = aws_security_group.instance_sg.id
}

