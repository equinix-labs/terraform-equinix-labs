# Terraform Equinix Labs Metal Setup Example

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_equinix"></a> [equinix](#requirement\_equinix) | >= 1.10.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_deploy_metal"></a> [deploy\_metal](#module\_deploy\_metal) | ../../ | n/a |
| <a name="module_workshop_setup"></a> [workshop\_setup](#module\_workshop\_setup) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_metal"></a> [enable\_metal](#input\_enable\_metal) | Enable Metal module | `bool` | `true` | no |
| <a name="input_enable_workshop_setup"></a> [enable\_workshop\_setup](#input\_enable\_workshop\_setup) | Enable Workshop Setup module | `bool` | `true` | no |
| <a name="input_metal_auth_token"></a> [metal\_auth\_token](#input\_metal\_auth\_token) | Equinix Metal user api token. | `string` | n/a | yes |
| <a name="input_metal_config"></a> [metal\_config](#input\_metal\_config) | Configuration for Metal Setup config | <pre>object({<br>    device_count  = number<br>    os            = string<br>    billing_cycle = string<br>    cluster_name  = string<br>    device_type   = string<br>  })</pre> | <pre>{<br>  "billing_cycle": "hourly",<br>  "cluster_name": "metal-cluster",<br>  "device_count": 3,<br>  "device_type": "m3.small.x86",<br>  "os": "ubuntu_20_04"<br>}</pre> | no |
| <a name="input_metal_organization_id"></a> [metal\_organization\_id](#input\_metal\_organization\_id) | Equinix Metal organization id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deploy_metal_outputs"></a> [deploy\_metal\_outputs](#output\_deploy\_metal\_outputs) | Outputs of the Deploy Metal module |
| <a name="output_workshop_setup_outputs"></a> [workshop\_setup\_outputs](#output\_workshop\_setup\_outputs) | Outputs of the Workshop Setup module |
<!-- END_TF_DOCS -->
