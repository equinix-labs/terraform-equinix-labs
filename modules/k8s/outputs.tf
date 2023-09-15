# Module outputs
output "k8s_outputs" {
  description = "K8s module outputs"

  value = { for k, v in module.k8s : k => v }
}
