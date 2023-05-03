# Setup provider block
terraform {
  required_version = ">= 1.3"
}

# Setup Project for deploying metal or EKSA
module "project_setup" {
  count                 = var.enable_workshop_setup ? 1 : 0
  source                = "./modules/invite-from-csv"
  metal_organization_id = var.metal_organization_id
}

# Deploy the metal module if platform of choice is metal
module "deploy_metal" {
  count  = var.enable_metal ? 1 : 0
  source = "./modules/metal"

  module_context = local.module_context
  module_config  = var.metal_config
}

# Deploy the eksa module if platform of choice is eksa
module "deploy_eksa" {
  count  = var.enable_eksa ? 1 : 0
  source = "./modules/eksa"

  module_context = local.module_context
  module_config  = var.eksa_config
}
