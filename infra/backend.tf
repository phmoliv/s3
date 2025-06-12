terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.82.2"
    }
  }

  backend "s3" {
    bucket         = "ph-github-state"
    key            = "terraform.tfstate"
    region         = "sa-east-1"
    encrypt        = true
    # use_lockfile is not a valid argument for the backend block
    # To enable state locking, set up a DynamoDB table and use `dynamodb_table`
  }
}

provider "aws" {
  region = "sa-east-1"
}
