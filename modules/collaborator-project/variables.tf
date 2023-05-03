# Module Context
variable "module_context" {
  description = "Input context for the module"
  type = object({
    organization_id = string
  })
}

# Module Config
variable "module_config" {
  description = "Module configuration for Collaborator module"
  type        = any
  default = {
    send_invites = true
  }
}

# Collaborator
variable "collaborator" {
  type        = string
  description = "Collaborator email to join the organization"
}
