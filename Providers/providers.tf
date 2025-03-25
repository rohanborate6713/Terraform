
#Different ways to configure providers in terraform

#1. In the root module
#The provider configuration block is placed in the root module of the Terraform configuration.
# This makes the provider configuration available to all the resources in the configuration.

provider "aws" {
  region = "ap-south-1"
}




#2. In the child module
#ou can also configure providers in a child module. This is useful 
#if you want to reuse the same provider configuration in multiple resources

module "aws_vpc" {
  source = "./aws_vpc"
  providers = {
    aws = aws.ap-south-1
  }
}



#3. In the required provider block
#You can also configure providers in the required_providers block. 
#This is useful if you want to make sure that a specific provider version is used.

terraform {
    required_providers {
        aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
        }
    }
}