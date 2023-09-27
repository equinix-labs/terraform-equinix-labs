# Terraform Equinix Labs K3s Module

This module utilizes the [K3s module](https://registry.terraform.io/modules/equinix/k3s/metal/latest) module to deploy SUSE K3s.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_k3s"></a> [k3s](#module\_k3s) | equinix/k3s/metal | 0.2.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_module_context"></a> [module\_context](#input\_module\_context) | Input context for the module | <pre>object({<br>    metal_project_id = string<br>    global_ip        = bool<br>  })</pre> | n/a | yes |
| <a name="input_module_config"></a> [module\_config](#input\_module\_config) | Module configuration for K3s module | <pre>list(object({<br>    name                    = string<br>    metro                   = string<br>    plan_control_plane      = string<br>    plan_node               = string<br>    node_count              = number<br>    k3s_ha                  = bool<br>    os                      = string<br>    control_plane_hostnames = string<br>    node_hostnames          = string<br>    custom_k3s_token        = string<br>    ip_pool_count           = number<br>    k3s_version             = string<br>    metallb_version         = string<br>  }))</pre> | <pre>[<br>  {<br>    "control_plane_hostnames": "k3s-cp",<br>    "custom_k3s_token": "",<br>    "ip_pool_count": 1,<br>    "k3s_ha": false,<br>    "k3s_version": "",<br>    "metallb_version": "",<br>    "metro": "SV",<br>    "name": "k3s-cluster",<br>    "node_count": 3,<br>    "node_hostnames": "k3s-node",<br>    "os": "debian_11",<br>    "plan_control_plane": "c3.small.x86",<br>    "plan_node": "c3.small.x86"<br>  }<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_k3s_outputs"></a> [k3s\_outputs](#output\_k3s\_outputs) | Outputs of the K3s module |
<!-- END_TF_DOCS -->
