# Terraform Equinix Labs Kubernetes Module

This module utilizes the [k8s](https://github.com/equinix-labs/terraform-equinix-kubernetes-cluster) module to deploy Kubernetes.

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
| <a name="module_k8s"></a> [k8s](#module\_k8s) | git@github.com:equinix-labs/terraform-equinix-kubernetes-cluster.git | v0.1.2 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_module_config"></a> [module\_config](#input\_module\_config) | Module configuration for k8s module | <pre>object({<br>    kube_vip_version     = string<br>    kubernetes_version   = string<br>    ssh_private_key_path = string<br>    cp_ha                = bool<br>    worker_count         = number<br>  })</pre> | <pre>{<br>  "cp_ha": true,<br>  "kube_vip_version": "v0.6.2",<br>  "kubernetes_version": "v1.27.5",<br>  "ssh_private_key_path": "",<br>  "worker_count": 1<br>}</pre> | no |
| <a name="input_module_context"></a> [module\_context](#input\_module\_context) | Input context for the module | <pre>object({<br>    metal_api_token = string<br>    project_id      = string<br>    metro           = string<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_k8s_outputs"></a> [k8s\_outputs](#output\_k8s\_outputs) | K8s module outputs |
<!-- END_TF_DOCS -->
