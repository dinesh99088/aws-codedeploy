provider "aws" {
  region  = "us-east-1"
  shared_credentials_files = ["$HOME/.aws/credentials"]
  profile = "default"
}


terraform {
  backend "s3" {
    bucket = "ecs99088"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}
