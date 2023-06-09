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

# Deploy the EKSA module if platform of choice is EKSA
module "deploy_eksa" {
  for_each              = { for k, v in var.metal_project_ids : k => v if var.enable_eksa }
  enable_eksa           = var.enable_eksa
  source                = "../../"
  metal_organization_id = var.metal_organization_id
  metal_auth_token      = var.metal_auth_token
  metal_project_id      = each.value
  eksa_config           = var.eksa_config
}
