# Module Vars
variable "metal_auth_token" {
  description = "Equinix Metal user api token."
  type        = string
  sensitive   = true
}

variable "metal_organization_id" {
  type        = string
  description = "Equinix Metal organization id"
}

variable "metal_project_ids" {
  description = "Project IDs to deploy Metal into"
  type        = list(string)
  default     = []
}

variable "enable_metal" {
  type        = bool
  description = "Enable Metal module"
  default     = true
}

variable "metal_config" {
  description = "Configuration for Metal Setup config"
  type = object({
    device_count  = number
    os            = string
    billing_cycle = string
    cluster_name  = string
    device_type   = string
  })
  default = {
    device_count  = 3
    os            = "ubuntu_20_04"
    billing_cycle = "hourly"
    cluster_name  = "metal-cluster"
    device_type   = "m3.small.x86"
  }
}
