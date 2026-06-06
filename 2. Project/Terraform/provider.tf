terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.primary
  alias  = "primary"
}

provider "aws" {
  region = var.Secondary
  alias  = "secondary"
}
