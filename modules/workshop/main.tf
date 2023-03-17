terraform {
  required_version = ">= 1.3"

  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = ">= 1.10.0"
    }
  }
}

module "project-setup" {
  source          = "../invite-from-csv"
  organization_id = var.workshop_organization_id
  metal_api_token = var.workshop_metal_api_token
  csv_file        = var.workshop_csv_file
}
