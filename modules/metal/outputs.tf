# Module outputs
output "metal_outputs" {
  description = "Outputs of the Metal module"

  value = { for k, v in equinix_metal_device.metal_node : k => v }
}
