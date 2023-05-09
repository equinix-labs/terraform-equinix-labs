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

# Setup the workshop
module "workshop_setup" {
  enable_workshop_setup = var.enable_workshop_setup
  source                = "../../"
  metal_organization_id = var.metal_organization_id
  metal_auth_token      = var.metal_auth_token
}

# Deploy the metal module if platform of choice is metal
module "deploy_metal" {
  for_each              = { for k, v in module.workshop_setup.project_setup_outputs[0].invite_from_csv_outputs : k => v if var.enable_metal }
  enable_metal          = var.enable_metal
  source                = "../../"
  metal_organization_id = var.metal_organization_id
  metal_auth_token      = var.metal_auth_token
  metal_project_id      = each.value.collaborator_project_id
  metal_config          = var.metal_config
}
