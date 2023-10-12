terraform {
  required_version = ">= 1.3"
}

# Module block to call k8s module
module "k8s" {
  source  = "equinix-labs/kubernetes-cluster/equinix"
  version = "0.2.1"

  metal_auth_token = var.module_context.metal_api_token
  metal_project_id = var.module_context.project_id
  metal_metro      = var.module_context.metro
  tags             = var.module_context.tags

  kube_vip_version     = var.module_config.kube_vip_version
  kubernetes_version   = var.module_config.kubernetes_version
  ssh_private_key_path = var.module_config.ssh_private_key_path
  cp_ha                = var.module_config.cp_ha
  worker_host_count    = var.module_config.worker_host_count
}
