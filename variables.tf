variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "eks_cluster_name" {
  description = "Name of EKS Cluster"
  type        = string
  default     = "dev-eks-cluster"
}