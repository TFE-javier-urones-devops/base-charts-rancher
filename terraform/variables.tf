variable "argocd_namespace" {
  default     = "argocd"
  description = "ArgoCD namespace"
  type        = string
}

variable "certmanager_namespace" {
  default     = "certmanager"
  description = "CertManager namespace"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "kubeconfig_path" {
  type        = string
  description = "Path to the kubeconfig file"
  default     = "~/.kube/config"
}