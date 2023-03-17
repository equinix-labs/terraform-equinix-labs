# Workshop Outputs
output "workshop_outpus" {
  description = "Outputs of the workshop"

  value = { for k, v in module.project-setup : k => v }
}