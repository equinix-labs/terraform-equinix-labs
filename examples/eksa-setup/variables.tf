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
  description = "Project ID to deploy EKSA into"
  type        = list(string)
  default     = []
}

variable "enable_eksa" {
  type        = bool
  description = "Enable EKSA module"
  default     = true
}

variable "eksa_config" {
  description = "Module configuration for EKSA module"
  type = object({
    cluster_name        = string
    cp_device_count     = number
    worker_device_count = number
  })
  default = {
    cluster_name        = "equinix-labs-cluster"
    cp_device_count     = 3
    worker_device_count = 3
  }
}
