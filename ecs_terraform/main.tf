provider "aws" {
  region  = "us-east-1"
  shared_credentials_file = "$HOME/.aws/credentials"
  profile = "default"
  version = "~> 2.63"
}


terraform {
  backend "s3" {
    bucket = "ecs99088"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}
