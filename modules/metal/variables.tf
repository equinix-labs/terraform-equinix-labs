# Module Context
variable "module_context" {
  description = "Input context for the module"
  type = object({
    project_id = string
    metro      = string
    tags       = list(string)
  })
}

# Module Config
variable "module_config" {
  description = "Module configuration for Metal module"
  type = object({
    device_count  = number
    os            = string
    billing_cycle = string
    cluster_name  = string
    device_type   = string
  })
  default = {
    device_count  = 1
    os            = "ubuntu_20_04"
    billing_cycle = "hourly"
    cluster_name  = "metal-cluster"
    device_type   = "m3.small.x86"
  }
}
