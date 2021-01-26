provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {}
}

locals {
  kops_state_bucket_name  = "${var.cluster_name}-kops_state"
  kubernetes_cluster_name = var.cluster_name
  vpc_name                = "${var.environment}-vpc"

  tags = {
    environment = var.environment
    terraform   = true
  }
}

data "aws_region" "current" {}
