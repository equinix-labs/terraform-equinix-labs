# Module Deploy EKSA Outputs
output "deploy_eksa_outputs" {
  description = "Outputs of the Deploy EKSA module"

  value = { for k, v in var.eksa_config : k => v }
}
