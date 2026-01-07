region               = "us-east-1"
env                  = "prod"
cluster_name         = "eks-cluster-ayush-prod"
vpc_cidr             = "10.23.0.0/16"
public_subnet_cidrs  = ["10.23.1.0/24", "10.23.2.0/24"]
instance_type        = "t3.micro"
desired_size         = 1

tags = {
  Project = "eks-ayush"
  Owner   = "ayu"
  Env     = "prod"
}

