terraform {
  required_version = ">= 1.3"
}

module "example" {
  # TEMPLATE: Replace this path with the Git repo path or Terraform Registry path
  source = "../../"

  # Define any required variables
  metal_project_id = var.example_metal_project_id
  metal_auth_token = var.example_metal_auth_token
}
