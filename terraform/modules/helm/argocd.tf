resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  create_namespace = true
  namespace        = var.argocd_namespace

  values = [
    file("${path.module}/argocd/values-argocd.yaml")
  ]  

  depends_on = [
    helm_release.certmanager   
 ]
  
}
