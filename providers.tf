provider "aws" {
    alias = "us-east-1"
    region = "us-east-1"
}

provider "aws" {
    alias = "us-west-1"
    region = "us-west-1"
  
}

terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = " 5.69.0"
    }
  }
}
