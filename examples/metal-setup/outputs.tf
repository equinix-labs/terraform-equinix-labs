# Module Deploy Metal Outputs
output "deploy_metal_outputs" {
  description = "Outputs of the Deploy Metal module"

  value = { for k, v in var.metal_config : k => v }
}
