#Remote Backend Configuration
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "test-eli"

    workspaces {
      name = "dev"
    }
  }
}

#Provider Configuration
provider "aws" {
  region     = "us-east-2"
  access_key = var.access_key
  secret_key = var.secret_key
}