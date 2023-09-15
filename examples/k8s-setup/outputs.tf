# Module Deploy EKSA Outputs
output "deploy_k8s_outputs" {
  description = "Outputs of the Deploy k8s module"

  value = { for k, v in var.k8s_config : k => v }

}
