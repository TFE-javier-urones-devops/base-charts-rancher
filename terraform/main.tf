module "helm" {
  source = "./modules/helm"
  certmanager_namespace = var.certmanager_namespace
  argocd_namespace      = var.argocd_namespace
}
