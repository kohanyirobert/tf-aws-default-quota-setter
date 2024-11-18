terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.76.0"
    }
  }

  required_version = ">= 1.9.8"
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_servicequotas_service_quota" "vpc_per_region" {
  quota_code   = "L-F678F1CE"
  service_code = "vpc"
  value        = 20
}

resource "aws_servicequotas_service_quota" "igw_per_region" {
  quota_code   = "L-A4707A72"
  service_code = "vpc"
  value        = 20
}

resource "aws_servicequotas_service_quota" "ngw_per_az" {
  quota_code   = "L-FE5A380F"
  service_code = "vpc"
  value        = 20
}