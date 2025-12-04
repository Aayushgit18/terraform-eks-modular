region               = "us-east-1"
env                  = "qa"
cluster_name         = "eks-cluster-ayush-qa"
vpc_cidr             = "10.22.0.0/16"
public_subnet_cidrs  = ["10.22.1.0/24", "10.22.2.0/24"]
instance_type        = "t3.medium"
desired_size         = 2

tags = {
  Project = "eks-ayush"
  Owner   = "ayu"
  Env     = "qa"
}

