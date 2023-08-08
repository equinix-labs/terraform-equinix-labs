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

# BGP Configs
variable "bgp_deployment_type" {
  type        = string
  description = "BGP deployment type"
  default     = "local"
}

variable "bgp_md5_hash" {
  type        = string
  description = "BGP md5 hash key"
  default     = "54190397c4d8086bf35D"
}

variable "bgp_asn" {
  type        = number
  description = "BGP asn"
  default     = 65000
}
