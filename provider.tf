terraform {
  required_version = ">=1.1.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.37.0"
    }
  }
  backend "s3" {
    bucket = "bucket-testing-may23"
    key = "dir"
    dynamodb_table = "table_testing"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"

}