# Terraform Equinix Labs Project

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
| <a name="module_deploy_eksa"></a> [deploy\_eksa](#module\_deploy\_eksa) | ./modules/eksa | n/a |
| <a name="module_deploy_metal"></a> [deploy\_metal](#module\_deploy\_metal) | ./modules/metal | n/a |
| <a name="module_project_setup"></a> [project\_setup](#module\_project\_setup) | ./modules/invite-from-csv | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_metal_auth_token"></a> [metal\_auth\_token](#input\_metal\_auth\_token) | Equinix Metal user api token. | `string` | n/a | yes |
| <a name="input_metal_organization_id"></a> [metal\_organization\_id](#input\_metal\_organization\_id) | Equinix Metal organization id | `string` | n/a | yes |
| <a name="input_eksa_config"></a> [eksa\_config](#input\_eksa\_config) | Module configuration for EKSA module | <pre>object({<br>    cluster_name        = string<br>    cp_device_count     = number<br>    worker_device_count = number<br>  })</pre> | <pre>{<br>  "cluster_name": "equinix-labs-cluster",<br>  "cp_device_count": 3,<br>  "worker_device_count": 3<br>}</pre> | no |
| <a name="input_enable_eksa"></a> [enable\_eksa](#input\_enable\_eksa) | Enable EKSA module | `bool` | `false` | no |
| <a name="input_enable_metal"></a> [enable\_metal](#input\_enable\_metal) | Enable Metal module | `bool` | `false` | no |
| <a name="input_enable_workshop_setup"></a> [enable\_workshop\_setup](#input\_enable\_workshop\_setup) | Enable Workshop Setup module | `bool` | `false` | no |
| <a name="input_metal_config"></a> [metal\_config](#input\_metal\_config) | Configuration for Metal module | <pre>object({<br>    device_count  = number<br>    os            = string<br>    billing_cycle = string<br>    cluster_name  = string<br>    device_type   = string<br>  })</pre> | <pre>{<br>  "billing_cycle": "hourly",<br>  "cluster_name": "metal-cluster",<br>  "device_count": 3,<br>  "device_type": "m3.small.x86",<br>  "os": "ubuntu_20_04"<br>}</pre> | no |
| <a name="input_metal_metro"></a> [metal\_metro](#input\_metal\_metro) | Equinix Metal metro | `string` | `"sv"` | no |
| <a name="input_metal_project_id"></a> [metal\_project\_id](#input\_metal\_project\_id) | Project ID | `string` | `""` | no |
| <a name="input_metal_tags"></a> [metal\_tags](#input\_metal\_tags) | String list of common tags for Equinix resources | `list(string)` | <pre>[<br>  "terraform",<br>  "equinix-labs"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deploy_eksa_outputs"></a> [deploy\_eksa\_outputs](#output\_deploy\_eksa\_outputs) | Outputs of the Deploy EKSA module |
| <a name="output_deploy_metal_outputs"></a> [deploy\_metal\_outputs](#output\_deploy\_metal\_outputs) | Outputs of the Deploy Metal module |
| <a name="output_project_setup_outputs"></a> [project\_setup\_outputs](#output\_project\_setup\_outputs) | Outputs of the Project Setup module |
<!-- END_TF_DOCS -->
