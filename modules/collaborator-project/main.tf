terraform {
  required_version = ">= 1.3"

  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = ">= 1.10.0"
    }
  }
}

resource "equinix_metal_project" "project" {
  name = replace(var.collaborator, "@", "-")
}

resource "equinix_metal_project_api_key" "project_key" {
  project_id  = equinix_metal_project.project.id
  description = "API token used to stand up individual user's clusters. Has limited permissions versus your user token."
  read_only   = false
}

resource "equinix_metal_organization_member" "user" {
  count           = var.send_invites ? 1 : 0
  organization_id = var.organization_id

  roles = ["limited_collaborator"] #required

  # message = "Please join my Equinix Metal organization to participate on the EKS Anywhere Hands-on lab"

  # project_ids is included in the invitation, but is also returned in the organization membership response
  projects_ids = [equinix_metal_project.project.id] # only used/needed for 'collaborators'

  # user is returned but we don't need to include all of that in this resource
  # presenting user.email as user_email fits our TF pattern in other resources.
  # user_email would act as the "invitee" in the invitation field.
  # Does this create a problem if the invitee email differs from the primary user email?
  invitee = var.collaborator # required
}
