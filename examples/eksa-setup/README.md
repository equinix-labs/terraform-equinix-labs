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
| <a name="module_deploy_eksa"></a> [deploy\_eksa](#module\_deploy\_eksa) | ../../ | n/a |
| <a name="module_workshop_setup"></a> [workshop\_setup](#module\_workshop\_setup) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_metal_auth_token"></a> [metal\_auth\_token](#input\_metal\_auth\_token) | Equinix Metal user api token. | `string` | n/a | yes |
| <a name="input_metal_organization_id"></a> [metal\_organization\_id](#input\_metal\_organization\_id) | Equinix Metal organization id | `string` | n/a | yes |
| <a name="input_eksa_config"></a> [eksa\_config](#input\_eksa\_config) | Module configuration for EKSA module | <pre>object({<br>    cluster_name        = string<br>    cp_device_count     = number<br>    worker_device_count = number<br>  })</pre> | <pre>{<br>  "cluster_name": "equinix-labs-cluster",<br>  "cp_device_count": 3,<br>  "worker_device_count": 3<br>}</pre> | no |
| <a name="input_enable_eksa"></a> [enable\_eksa](#input\_enable\_eksa) | Enable EKSA module | `bool` | `true` | no |
| <a name="input_enable_workshop_setup"></a> [enable\_workshop\_setup](#input\_enable\_workshop\_setup) | Enable Workshop Setup module | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deploy_eksa_outputs"></a> [deploy\_eksa\_outputs](#output\_deploy\_eksa\_outputs) | Outputs of the Deploy EKSA module |
| <a name="output_workshop_setup_outputs"></a> [workshop\_setup\_outputs](#output\_workshop\_setup\_outputs) | Outputs of the Workshop Setup module |
<!-- END_TF_DOCS -->
