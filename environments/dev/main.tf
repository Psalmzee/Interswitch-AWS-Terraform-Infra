provider "aws" {
  region = "eu-west-1"
}

variable "region" {
  type    = string
  default = "eu-west-1"
}



module "ecr" {
  source = "../../modules/ecr"
  subnet_id = var.subnet_id
  cluster_name = var.cluster_name
  subnets = var.subnets
  vpc_id = var.vpc_id
}

module "eks" {
  source = "../../modules/eks"
  subnet_id = var.subnet_id
  cluster_name = var.cluster_name
  subnets = var.subnets
  vpc_id = var.vpc_id
}


