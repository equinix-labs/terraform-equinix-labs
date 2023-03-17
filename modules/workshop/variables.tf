variable "workshop_organization_id" {
  type        = string
  description = "Equinix Metal organization id"
}

variable "workshop_csv_file" {
  type        = string
  description = "Path to a CSV file containing a list of projects to provision: email,metro,plan. Email address is used as the project name and the collaborator. Metro and plan are used to provision the project."
  default     = "users.csv"
}

variable "workshop_send_invites" {
  type        = bool
  description = "Wether Collaborator invitations should be sent. This could be toggled after a successful provision to prevent sending invitations to a project that could be deleted during a reprovision"
  default     = true
}
