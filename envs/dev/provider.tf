terraform {
  backend "s3" {
    bucket         = "ayush-terraform-state"
    key            = "eks/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}
