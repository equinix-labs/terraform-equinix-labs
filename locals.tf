# Local vars
locals {
  module_context = {
    metal_api_token = var.metal_auth_token
    project_id      = var.metal_project_id
    organization_id = var.metal_organization_id
    metro           = var.metal_metro
    tags            = var.metal_tags
  }
}
