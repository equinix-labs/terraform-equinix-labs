# Module outputs
output "eksa_outputs" {
  description = "Outputs of the EKS-A module"

  value = { for k, v in module.eksa : k => v }
}
