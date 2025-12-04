variable "cluster_name" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "desired_size" {
  type    = number
  default = 2
}

variable "min_size" {
  type    = number
  default = 1
}

variable "max_size" {
  type    = number
  default = 2
}

variable "disk_size" {
  type    = number
  default = 20
}

variable "ec2_ssh_key" {
  type    = string
  default = ""
}

variable "tags" {
  type = map(string)
  default = {}
}

