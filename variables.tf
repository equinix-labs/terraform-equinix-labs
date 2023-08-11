# Variables for ALL modules
variable "metal_auth_token" {
  description = "Equinix Metal user api token."
  type        = string
  sensitive   = true
}

variable "metal_project_id" {
  description = "Project ID"
  type        = string
  default     = ""
}

variable "metal_organization_id" {
  type        = string
  description = "Equinix Metal organization id"
}

variable "metal_tags" {
  description = "String list of common tags for Equinix resources"
  type        = list(string)
  default     = ["terraform", "equinix-labs"]
}

variable "metal_metro" {
  type        = string
  description = "Equinix Metal metro"
  default     = "sv"
}

# Variables for "workshop setup" module
variable "enable_workshop_setup" {
  type        = bool
  description = "Enable Workshop Setup module"
  default     = false
}

# Variables for "metal" module
variable "enable_metal" {
  type        = bool
  description = "Enable Metal module"
  default     = false
}

variable "metal_config" {
  description = "Configuration for Metal module"
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

# Variables for "eksa" module
variable "enable_eksa" {
  type        = bool
  description = "Enable EKSA module"
  default     = false
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

# Variables for "K3s" module
variable "global_ip" {
  type        = bool
  description = "Enables a global anycast IPv4 that will be shared for all clusters in all metros"
  default     = false
}

variable "enable_k3s" {
  type        = bool
  description = "Enable K3s module"
  default     = false
}

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
    k3s_ha                  = true
    os                      = "debian_11"
    control_plane_hostnames = "k3s-cp"
    node_hostnames          = "k3s-node"
    custom_k3s_token        = ""
    ip_pool_count           = 1
    k3s_version             = ""
    metallb_version         = ""
  }]
}
