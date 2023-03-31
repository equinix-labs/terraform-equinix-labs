# Module Project Setup Outputs
output "project_setup_outputs" {
  description = "Outputs of the Project Setup module"

  value = { for k, v in module.project_setup : k => v }
}


# Module Deploy Metal Outputs
output "deploy_metal_outputs" {
  description = "Outputs of the Deploy Metal module"

  value = { for k, v in var.eksa_config : k => v }
}

# Module Deploy EKSA Outputs
output "deploy_eksa_outputs" {
  description = "Outputs of the Deploy EKSA module"

  value = { for k, v in var.metal_config : k => v }
}
