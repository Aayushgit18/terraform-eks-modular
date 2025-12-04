module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  env                  = var.env
  tags                 = var.tags
}

module "eks" {
  source = "../../modules/eks"

  cluster_name = var.cluster_name
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.public_subnets
  vpc_cidr     = var.vpc_cidr
  tags         = var.tags
}

module "nodegroup" {
  source = "../../modules/nodegroup"

  cluster_name = module.eks.cluster_name
  subnet_ids   = module.vpc.public_subnets

  instance_type = var.instance_type
  desired_size  = var.desired_size
  min_size      = 1
  max_size      = var.desired_size

  ec2_ssh_key = ""
  tags        = var.tags
}

