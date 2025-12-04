variable "region" {
  type    = string
  default = "us-east-1"
}

variable "env" {
  type    = string
  default = "prod"
}

variable "cluster_name" {
  type    = string
  default = "eks-cluster-ayush-prod"
}

variable "vpc_cidr" {
  type    = string
  default = "10.23.0.0/16"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.23.1.0/24", "10.23.2.0/24"]
}

variable "instance_type" {
  type    = string
  default = "t3.large"   # Production stronger nodes
}

variable "desired_size" {
  type    = number
  default = 3             # More nodes for prod
}

variable "tags" {
  type = map(string)
  default = {
    Project = "eks-ayush"
    Owner   = "ayu"
    Env     = "prod"
  }
}

