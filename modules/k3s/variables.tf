# Module Context
variable "module_context" {
  description = "Input context for the module"
  type = object({
    metal_project_id = string
    global_ip        = bool
  })
}

# Module Config
variable "module_config" {
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
    k3s_version             = ""
    metallb_version         = ""
  }]
}
