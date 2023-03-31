# Local vars
locals {
  collaborators = {
    for user in csvdecode(file(var.csv_file)) :
    trimspace(user.email) => user
  }

  module_context = {
    organization_id = data.equinix_metal_organization.org.id
  }

}
