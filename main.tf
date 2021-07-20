# Terraform Block

terraform {
    required_version ="~> 0.15.1"
    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.0"
      }
    }
}

#Providor block

provider "aws" {
  region = "us-east-1"
}

#resource block

resource "aws_vpc" "project1vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      "name" = "project1vpc"
    }
}