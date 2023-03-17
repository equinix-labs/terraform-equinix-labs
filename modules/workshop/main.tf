terraform {
  required_version = ">= 1.3"
}

module "project_setup" {
  source          = "../invite-from-csv"
  organization_id = var.workshop_organization_id
  csv_file        = var.workshop_csv_file
  send_invites    = var.workshop_send_invites
}
