terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

#ignore

# Configure the AWS Provider
provider "aws" {
  access_key = "AKIARWFXLG6LYVG7V5BA"
  secret_key = "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"
  region = "us-east-1"
}
