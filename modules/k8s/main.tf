terraform {
  required_version = ">= 1.3"
}

# Module block to call k8s module
module "k8s" {
  source = "git::https://github.com/equinix-labs/terraform-equinix-kubernetes-cluster.git?ref=v0.1.2"

  auth_token           = var.module_context.metal_api_token
  project_id           = var.module_context.project_id
  metro                = var.module_context.metro
  kube_vip_version     = var.module_config.kube_vip_version
  kubernetes_version   = var.module_config.kubernetes_version
  ssh_private_key_path = var.module_config.ssh_private_key_path
  cp_ha                = var.module_config.cp_ha
  worker_count         = var.module_config.worker_count
}
