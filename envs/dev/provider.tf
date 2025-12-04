terraform {
  backend "s3" {
    bucket = "ayush-terraform-state"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}
