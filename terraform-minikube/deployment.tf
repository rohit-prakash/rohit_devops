resource "kubernetes_namespace" "namespace" {
  metadata {
    name = "tek-dev"
  }
}

# resource "kubernetes_deployment" "deployment" {
#   metadata {
#     name = "myapp"
#     labels = {
#       test = "myapp"
#     }
#     namespace = "tek-dev"
#   }

#   spec {
#     replicas = 2

#     selector {
#       match_labels = {
#         test = "myapp"
#       }
#     }

#     template {
#       metadata {
#         labels = {
#           test = "myapp"
#         }
#       }

#       spec {
#         container {
#           image = "rohitvsc/myapp:1.1"
#           name  = "myapp"
#         }
#       }
#     }
#   }
# }