terraform {
    required_providers {
      mycloud = {
        source = "hashicorp/kubernetes"
        version = "~> 1.0"
      }
    }
  backend "local" {
    path = "/tfstate/terraform.tfstate"
  }
}
provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context_cluster   = "minikube"
  host = "https://127.0.0.1:60137"
}