# Module Context
variable "module_context" {
  description = "Input context for the module"
  type = object({
    metal_api_token = string
    project_id      = string
    metro           = string
    tags            = list(string)
  })
  sensitive = true
}

# Module Config
variable "module_config" {
  description = "Module configuration for k8s module"
  type = object({
    kube_vip_version     = string
    kubernetes_version   = string
    ssh_private_key_path = string
    cp_ha                = bool
    worker_host_count    = number
  })
  default = {
    kube_vip_version     = "v0.6.2"
    kubernetes_version   = "v1.27.5"
    ssh_private_key_path = ""
    cp_ha                = true
    worker_host_count    = 1
  }
}
