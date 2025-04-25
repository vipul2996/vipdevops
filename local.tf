terraform {
  backend "s3" {
    bucket         = "invstatebackup"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    
  }
}

provider "aws" {
    # shared_config_files      = ["C:\\Users\\vdepolkar\\.aws\\config"]
    # shared_credentials_files = ["C:\\Users\\vdepolkar\\.aws\\credentials"] #No need as this will go in github actions
  region                   = "us-east-1"
}

terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
        }
    }
}