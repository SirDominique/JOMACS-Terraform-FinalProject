
provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source    = "./modules/vpc"
  target_id = module.ec2.instance_id
}

module "ec2" {
  source          = "./modules/ec2"
  instance_subnet = module.vpc.private_sn
  instance_sg     = module.vpc.instance_sg
}
