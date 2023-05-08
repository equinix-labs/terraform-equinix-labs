# Terraform Equinix Labs EKS-A Module

This module utilizes the [metal-eks-anywhere](https://registry.terraform.io/modules/equinix-labs/metal-eks-anywhere/equinix/latest) module to deploy AWS EKS-A.

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
| <a name="module_eksa"></a> [eksa](#module\_eksa) | equinix-labs/metal-eks-anywhere/equinix | 0.5.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_module_config"></a> [module\_config](#input\_module\_config) | Module configuration for EKSA module | <pre>object({<br>    cluster_name        = string<br>    cp_device_count     = number<br>    worker_device_count = number<br>  })</pre> | <pre>{<br>  "cluster_name": "eksa-workshop-cluster",<br>  "cp_device_count": 1,<br>  "worker_device_count": 1<br>}</pre> | no |
| <a name="input_module_context"></a> [module\_context](#input\_module\_context) | Input context for the module | <pre>object({<br>    metal_api_token = string<br>    project_id      = string<br>    metro           = string<br>    tags            = list(string)<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eksa_outputs"></a> [eksa\_outputs](#output\_eksa\_outputs) | Outputs of the EKS-A module |
<!-- END_TF_DOCS -->
