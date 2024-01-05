resource "helm_release" "argocd" {
    name = "argocd"
    repository = "https://argoproj.github.io/argo-helm"
    chart = "argo-cd"
    namespace = "argocd"
    create_namespace = true
    version = "5.52.0"

    values = [file("values/argocd.yml")]
}