variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "bucket_name" {
  default     = "teste-paulinho"
  description = "AWS bucket for states"
}

variable "environment" {
  default     = "dev"
  description = "Environment like prd, hmg, qa or dev"
}

variable "cluster_name" {
  default     = "k8s-dev0.printi.k8s"
  description = "Fully qualified domain name of the Kubernetes cluster."
}

variable "azs" {
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
  description = "The Availability Zones within the region that the VPC will span across."
}

variable "ingress_ips" {
  type        = list(string)
  default     = ["10.0.0.100/32", "10.0.0.101/32"]
  description = "Array of strings with any CIDR ranges that you want to allow access to your cluster."
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "VPC CIDR block"
}

variable "public_subnet_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  description = "Public subnet CIDR"
}

variable "private_subnet_cidr" {
  type        = list(string)
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  description = "Private subnet CIDR"
}
