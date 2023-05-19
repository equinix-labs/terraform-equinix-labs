# Module Workshop Setup Outputs
output "workshop_setup_outputs" {
  description = "Outputs of the Workshop Setup module"

  value = { for k, v in module.workshop_setup.project_setup_outputs : k => v }
}

# Module Deploy Metal Outputs
output "deploy_metal_outputs" {
  description = "Outputs of the Deploy Metal module"

  value = { for k, v in var.metal_config : k => v }
}
