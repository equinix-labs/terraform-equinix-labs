terraform {
  required_version = ">= 1.3"
}

# Module block to call SUSE K3s module
module "k3s" {
  source  = "equinix/k3s/metal"
  version = "0.2.0"

  metal_project_id = var.module_context.metal_project_id
  global_ip        = var.module_context.global_ip
  clusters         = var.module_config
}
