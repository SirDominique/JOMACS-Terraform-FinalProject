output "load_balancer" {
  value = module.vpc.load_balancer
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_sn1" {
  value = module.vpc.public_sn1
}

output "public_sn2" {
  value = module.vpc.public_sn2
}

output "private_sn" {
  value = module.vpc.private_sn
}

