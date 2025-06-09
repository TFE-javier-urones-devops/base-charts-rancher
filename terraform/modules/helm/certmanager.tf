resource "helm_release" "certmanager" {
  name       = "cert-manager"
  repository = "https://charts.jetstack.io"
  chart      = "cert-manager"

  create_namespace = true
  namespace        = var.certmanager_namespace

  values = [
    file("${path.module}/certmanager/values-certmanager.yaml")
  ]



}

