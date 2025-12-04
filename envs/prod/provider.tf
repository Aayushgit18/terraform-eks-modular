terraform {
  backend "s3" {
    bucket = "ayush-terraform-state"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}
