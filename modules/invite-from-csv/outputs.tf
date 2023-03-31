# Module outputs
output "invite_from_csv_outputs" {
  description = "Outputs of the invite_from_csv"

  value = { for k, v in module.project_invite_setup : k => v }
}
