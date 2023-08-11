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
  description = "Project ID to deploy K3s into"
  type        = list(string)
  default     = []
}

variable "global_ip" {
  description = "Enables a global anycast IPv4 that will be shared for all clusters in all metros"
  type        = string
  default     = false
}

variable "enable_k3s" {
  type        = bool
  description = "Enable K3s module"
  default     = true
}

# Module Config
variable "k3s_config" {
  description = "Module configuration for K3s module"
  type = list(object({
    name                    = string
    metro                   = string
    plan_control_plane      = string
    plan_node               = string
    node_count              = number
    k3s_ha                  = bool
    os                      = string
    control_plane_hostnames = string
    node_hostnames          = string
    custom_k3s_token        = string
    ip_pool_count           = number
    k3s_version             = string
    metallb_version         = string
  }))
  default = [{
    name                    = "k3s-cluster"
    metro                   = "SV"
    plan_control_plane      = "c3.small.x86"
    plan_node               = "c3.small.x86"
    node_count              = 3
    k3s_ha                  = false
    os                      = "debian_11"
    control_plane_hostnames = "k3s-cp"
    node_hostnames          = "k3s-node"
    custom_k3s_token        = ""
    ip_pool_count           = 1
    k3s_version             = "v1.4.stable.1"
    metallb_version         = ""
  }]
}
