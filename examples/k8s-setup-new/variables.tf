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

variable "enable_workshop_setup" {
  type        = bool
  description = "Enable Workshop Setup module"
  default     = true
}

variable "enable_k8s" {
  type        = bool
  description = "Enable EKSA module"
  default     = true
}

variable "k8s_config" {
  description = "Module configuration for k8s module"
  type = object({
    kube_vip_version     = string
    kubernetes_version   = string
    ssh_private_key_path = string
    cp_ha                = bool
    worker_count         = number
  })
  default = {
    kube_vip_version     = "v0.6.2"
    kubernetes_version   = "v1.27.5"
    ssh_private_key_path = ""
    cp_ha                = true
    worker_count         = 1
  }
}
