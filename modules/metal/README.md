# Terraform Equinix Labs Metal Module

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_equinix"></a> [equinix](#requirement\_equinix) | >= 1.10.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.4.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | 4.0.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_equinix"></a> [equinix](#provider\_equinix) | >= 1.10.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.4.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [equinix_metal_device.metal_node](https://registry.terraform.io/providers/equinix/equinix/latest/docs/resources/metal_device) | resource |
| [equinix_metal_gateway.gw](https://registry.terraform.io/providers/equinix/equinix/latest/docs/resources/metal_gateway) | resource |
| [equinix_metal_reserved_ip_block.public_ips](https://registry.terraform.io/providers/equinix/equinix/latest/docs/resources/metal_reserved_ip_block) | resource |
| [equinix_metal_ssh_key.ssh_pub_key](https://registry.terraform.io/providers/equinix/equinix/latest/docs/resources/metal_ssh_key) | resource |
| [equinix_metal_vlan.provisioning_vlan](https://registry.terraform.io/providers/equinix/equinix/latest/docs/resources/metal_vlan) | resource |
| [local_file.ssh_private_key](https://registry.terraform.io/providers/hashicorp/local/2.4.0/docs/resources/file) | resource |
| [random_string.resource_suffix](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/string) | resource |
| [random_string.ssh_key_suffix](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/string) | resource |
| [tls_private_key.ssh_key_pair](https://registry.terraform.io/providers/hashicorp/tls/4.0.4/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_module_context"></a> [module\_context](#input\_module\_context) | Input context for the module | <pre>object({<br>    project_id = string<br>    metro      = string<br>    tags       = list(string)<br>  })</pre> | n/a | yes |
| <a name="input_module_config"></a> [module\_config](#input\_module\_config) | Module configuration for Metal module | <pre>object({<br>    device_count  = number<br>    os            = string<br>    billing_cycle = string<br>    cluster_name  = string<br>    device_type   = string<br>  })</pre> | <pre>{<br>  "billing_cycle": "hourly",<br>  "cluster_name": "metal-cluster",<br>  "device_count": 1,<br>  "device_type": "m3.small.x86",<br>  "os": "ubuntu_20_04"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_metal_outputs"></a> [metal\_outputs](#output\_metal\_outputs) | Outputs of the Metal module |
<!-- END_TF_DOCS -->
