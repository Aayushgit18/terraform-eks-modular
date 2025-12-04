terraform {
  backend "s3" {
    bucket = "ayush-terraform-state"
    key    = "qa/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}
