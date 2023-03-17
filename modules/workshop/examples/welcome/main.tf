terraform {
  required_version = ">= 1.3"

  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = ">= 1.10.0"
    }
  }
}

provider "equinix" {
  auth_token = var.metal_auth_token
}

module "welcome_workshop" {
  source                   = "../../"
  workshop_organization_id = var.metal_organization_id
  workshop_csv_file        = var.workshop_csv_file
  workshop_send_invites    = var.workshop_send_invites
}
