terraform {
  backend "s3" {
    bucket         = "aws-eks-infra-state-fw41dw7o1qfe"
    key            = "aws-eks-infra.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "aws-eks-infra-tf-state-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.46.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.2.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.16.1"
    }
  }

  required_version = "~> 1.3"
}
