terraform {
  required_version = ">= 1.3"

  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = ">= 1.10.0"
    }
  }
}

data "equinix_metal_organization" "org" {
  organization_id = var.metal_organization_id
}

module "project_invite_setup" {
  for_each       = local.collaborators
  source         = "../collaborator-project"
  module_context = local.module_context
  collaborator   = each.value.email
}
