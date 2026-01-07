terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  backend "s3" {
    bucket = "carl-jan26-terraform-bucket"
    key =  "dev/carl/terraform.tfstate"
    encrypt = true
    region = "us-west-1"
    dynamodb_table  = "carlsaenz-locking-table1"
}
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

