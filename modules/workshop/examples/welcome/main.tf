terraform {
  required_version = ">= 1.3"
}

module "welcome-workshop" {
  source          = "../../"
  workshop_organization_id = var.workshop_organization_id
  workshop_metal_api_token = var.workshop_metal_api_token
  workshop_csv_file        = var.workshop_csv_file
}
