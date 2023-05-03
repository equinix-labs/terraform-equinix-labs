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
  description = "Module configuration for EKSA module"
  type = object({
    cluster_name        = string
    cp_device_count     = number
    worker_device_count = number
  })
  default = {
    cluster_name        = "eksa-workshop-cluster"
    cp_device_count     = 1
    worker_device_count = 1
  }
}
