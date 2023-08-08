# Setup provider block
terraform {
  required_version = ">= 1.3"

  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = ">= 1.10.0"
    }
  }
}

# Setup metal auth token for provider
provider "equinix" {
  auth_token = var.metal_auth_token
}

# Deploy the K3s module if platform of choice is K3s
module "deploy_k3s" {
  for_each              = { for k, v in var.metal_project_ids : k => v if var.enable_k3s }
  enable_k3s            = var.enable_k3s
  source                = "../../"
  metal_organization_id = var.metal_organization_id
  metal_auth_token      = var.metal_auth_token
  metal_project_id      = each.value
  global_ip             = var.global_ip
  k3s_config            = var.k3s_config
}
