# Module Workshop Setup Outputs
output "workshop_setup_outputs" {
  description = "Outputs of the Workshop Setup module"

  value = { for k, v in module.workshop_setup.project_setup_outputs : k => v }
}

# Module Deploy K3s Outputs
output "deploy_k3s_outputs" {
  description = "Outputs of the Deploy K3s module"

  value = { for k, v in var.k3s_config : k => v }
}
