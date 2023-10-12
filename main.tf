# Setup provider block
terraform {
  required_version = ">= 1.3"
}

# ---------------------------------------------------------------------------------------------------------------------
# Project Setup
# ---------------------------------------------------------------------------------------------------------------------

# Setup Project for deploying metal or EKSA
module "project_setup" {
  count                 = var.enable_workshop_setup ? 1 : 0
  source                = "./modules/invite-from-csv"
  metal_organization_id = var.metal_organization_id
}

# ---------------------------------------------------------------------------------------------------------------------
# Platforms
# ---------------------------------------------------------------------------------------------------------------------

# Deploy the metal module if platform of choice is Metal
module "deploy_metal" {
  count  = var.enable_metal ? 1 : 0
  source = "./modules/metal"

  module_context = local.module_context
  module_config  = var.metal_config
}

# Deploy the eksa module if platform of choice is EKSA
module "deploy_eksa" {
  count  = var.enable_eksa ? 1 : 0
  source = "./modules/eksa"

  module_context = local.module_context
  module_config  = var.eksa_config
}

# Deploy the K3s module if platform of choice is K3s
module "deploy_k3s" {
  count  = var.enable_k3s ? 1 : 0
  source = "./modules/k3s"

  module_context = local.module_context
  module_config  = var.k3s_config
}

# Deploy the k8s module if platform of choice is K8s
module "deploy_k8s" {
  count  = var.enable_k8s ? 1 : 0
  source = "./modules/k8s"

  module_context = local.module_context
  module_config  = var.k8s_config
}
