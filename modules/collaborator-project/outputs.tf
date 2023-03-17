output "collaborator_project_id" {
  description = "Collaborator Project ID"
  value       = equinix_metal_project.project.id
}

output "collaborator_project_api_key" {
  description = "Collaborator Project API Key"
  value       = equinix_metal_project_api_key.project_key.token
}
