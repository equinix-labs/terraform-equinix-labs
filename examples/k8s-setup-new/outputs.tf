# Module Workshop Setup Outputs
output "workshop_setup_outputs" {
  description = "Outputs of the Workshop Setup module"

  value = { for k, v in module.workshop_setup.project_setup_outputs : k => v }
}

# Module Deploy k8s Outputs
output "deploy_k8s_outputs" {
  description = "Outputs of the Deploy k8s module"

  value = { for k, v in var.k8s_config : k => v }
}
