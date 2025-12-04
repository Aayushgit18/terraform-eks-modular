variable "region" {
  type    = string
  default = "us-east-1"
}

variable "env" {
  type    = string
  default = "dev"
}

variable "cluster_name" {
  type    = string
  default = "eks-cluster-ayush-dev"
}

variable "vpc_cidr" {
  type    = string
  default = "10.21.0.0/16"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.21.1.0/24","10.21.2.0/24"]
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "desired_size" {
  type    = number
  default = 2
}

variable "tags" {
  type = map(string)
  default = {
    Project = "eks-ayush"
    Owner   = "ayu"
    Env     = "dev"
  }
}

