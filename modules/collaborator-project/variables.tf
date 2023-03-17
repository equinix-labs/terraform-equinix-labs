variable "organization_id" {
  type        = string
  description = "Equinix Metal organization id"
}

variable "collaborator" {
  type        = string
  description = "Collaborator email to join the organization"
}

variable "send_invites" {
  type        = bool
  description = "Wether Collaborator invitations should be sent. This could be toggled after a successful provision to prevent sending invitations to a project that could be deleted during a reprovision"
  default     = true
}

variable "metal_api_token" {
  description = "Equinix Metal user api token"
  type        = string
}