
resource "helm_release" "rancher" {
  name       = "rancher"
  chart      = "rancher"
  repository = "https://releases.rancher.com/server-charts/stable"

  namespace        = "cattle-system"
  create_namespace = true

  values = [
    file("${path.module}/rancher/values-rancher.yaml")
  ]

  depends_on = [
    helm_release.ingress-nginx
  ]
}
