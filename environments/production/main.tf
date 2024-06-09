provider "aws" {
  region = "eu-west-1"
}

module "security_group" {
  source = "../../modules/security_group"
  vpc_id = var.vpc_id
}

module "ec2" {
  source            = "../../modules/ec2"
  subnet_id         = var.subnet_id
  security_group_id = module.security_group.id
}

module "ecr" {
  source = "../../modules/ecr"
}

module "eks" {
  source          = "../../modules/eks"
  cluster_name    = var.cluster_name
  vpc_id          = var.vpc_id
  subnets         = var.subnets
}

output "security_group_id" {
  value = module.security_group.id
}

output "ecr_repository_url" {
  value = module.ecr.repository_url
}

output "eks_cluster_id" {
  value = module.eks.cluster_id
}

output "ec2_instance_ids" {
  value = module.ec2.ids
}
