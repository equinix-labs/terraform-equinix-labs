# Module Deploy K3s Outputs
output "deploy_k3s_outputs" {
  description = "Outputs of the Deploy K3s module"

  value = { for k, v in var.k3s_config : k => v }
}
