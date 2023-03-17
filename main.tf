
# TEMPLATE: Replace sample provider described below with your own.
terraform {
  required_version = ">= 1.3"

  provider_meta "equinix" {
    # TEMPLATE: Replace the module name with your own.
    module_name = "template"
  }

  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = ">= 1.8.0"
    }
  }
}

# TEMPLATE: Replace sample provider described below with your own.
provider "equinix" {
  auth_token = var.metal_auth_token
}
