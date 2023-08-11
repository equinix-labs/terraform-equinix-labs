# Module outputs
output "k3s_outputs" {
  description = "Outputs of the K3s module"

  value = { for k, v in module.k3s : k => v }
}
