terraform {
  required_version = ">= 1.3"
}

# Module block to call EKSA module
module "eksa" {
  source  = "equinix-labs/metal-eks-anywhere/equinix"
  version = "0.5.0"

  metal_api_token     = var.module_context.metal_api_token
  project_id          = var.module_context.project_id
  metro               = var.module_context.metro
  tags                = var.module_context.tags
  cluster_name        = var.module_config.cluster_name
  cp_device_count     = var.module_config.cp_device_count
  worker_device_count = var.module_config.worker_device_count

}
