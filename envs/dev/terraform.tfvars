region               = "us-east-1"
env                  = "dev"
cluster_name         = "eks-cluster-ayush-dev"
vpc_cidr             = "10.21.0.0/16"
public_subnet_cidrs  = ["10.21.1.0/24","10.21.2.0/24"]
instance_type        = "t3.medium"
desired_size         = 2

tags = {
  Project = "eks-ayush"
  Owner   = "ayu"
  Env     = "dev"
}

