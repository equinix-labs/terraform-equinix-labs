# Terraform Equinix Labs Kubernetes Setup Example

This is an example of how to utilize the root module to deploy the [invite-from-csv](https://github.com/equinix-labs/terraform-equinix-labs/tree/main/modules/invite-from-csv) module and the [k8s](https://github.com/equinix-labs/terraform-equinix-labs/tree/main/modules/k8s) module. In this example, each user identified in the `users.csv` file (see users.csv.example) will have a project provisioned and an invitation sent by email to join that project. Kubernetes will then be provisioned into each user's project with the configurations set within the [variables.tf](./variables.tf) file.

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
| <a name="module_deploy_k8s"></a> [deploy\_k8s](#module\_deploy\_k8s) | ../../ | n/a |
| <a name="module_workshop_setup"></a> [workshop\_setup](#module\_workshop\_setup) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_metal_auth_token"></a> [metal\_auth\_token](#input\_metal\_auth\_token) | Equinix Metal user api token. | `string` | n/a | yes |
| <a name="input_metal_organization_id"></a> [metal\_organization\_id](#input\_metal\_organization\_id) | Equinix Metal organization id | `string` | n/a | yes |
| <a name="input_enable_k8s"></a> [enable\_k8s](#input\_enable\_k8s) | Enable EKSA module | `bool` | `true` | no |
| <a name="input_enable_workshop_setup"></a> [enable\_workshop\_setup](#input\_enable\_workshop\_setup) | Enable Workshop Setup module | `bool` | `true` | no |
| <a name="input_k8s_config"></a> [k8s\_config](#input\_k8s\_config) | Module configuration for k8s module | <pre>object({<br>    kube_vip_version     = string<br>    kubernetes_version   = string<br>    ssh_private_key_path = string<br>    cp_ha                = bool<br>    worker_host_count    = number<br>  })</pre> | <pre>{<br>  "cp_ha": true,<br>  "kube_vip_version": "v0.6.2",<br>  "kubernetes_version": "v1.27.5",<br>  "ssh_private_key_path": "",<br>  "worker_host_count": 1<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deploy_k8s_outputs"></a> [deploy\_k8s\_outputs](#output\_deploy\_k8s\_outputs) | Outputs of the Deploy k8s module |
| <a name="output_workshop_setup_outputs"></a> [workshop\_setup\_outputs](#output\_workshop\_setup\_outputs) | Outputs of the Workshop Setup module |
<!-- END_TF_DOCS -->
