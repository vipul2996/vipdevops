terraform {
  backend "s3" {
    bucket         = "invstatebackup"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "invstatelock"

  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
