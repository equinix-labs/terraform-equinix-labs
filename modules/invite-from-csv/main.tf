terraform {
  required_version = ">= 1.3"

  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = ">= 1.10.0"
    }
  }
}

locals {
  users = csvdecode(file(var.csv_file))
}

data "equinix_metal_organization" "org" {
  organization_id = var.organization_id
}

module "project-invite-setup" {
  for_each        = { for user in local.users : trimspace(user.email) => user }
  source          = "../collaborator-project"
  organization_id = data.equinix_metal_organization.org.id
  collaborator    = each.value.email
  metal_api_token = var.metal_api_token
}
