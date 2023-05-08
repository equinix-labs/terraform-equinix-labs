# Terraform Equinix Labs Collaborator Project Module

This module creates a project with collaborator users, sends each user an inviation for each user to join their project, and assigns those users `limited_collaborator` role.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_equinix"></a> [equinix](#requirement\_equinix) | >= 1.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_equinix"></a> [equinix](#provider\_equinix) | >= 1.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [equinix_metal_organization_member.user](https://registry.terraform.io/providers/equinix/equinix/latest/docs/resources/metal_organization_member) | resource |
| [equinix_metal_project.project](https://registry.terraform.io/providers/equinix/equinix/latest/docs/resources/metal_project) | resource |
| [equinix_metal_project_api_key.project_key](https://registry.terraform.io/providers/equinix/equinix/latest/docs/resources/metal_project_api_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_collaborator"></a> [collaborator](#input\_collaborator) | Collaborator email to join the organization | `string` | n/a | yes |
| <a name="input_module_context"></a> [module\_context](#input\_module\_context) | Input context for the module | <pre>object({<br>    organization_id = string<br>  })</pre> | n/a | yes |
| <a name="input_module_config"></a> [module\_config](#input\_module\_config) | Module configuration for Collaborator module | `any` | <pre>{<br>  "send_invites": true<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_collaborator_project_api_key"></a> [collaborator\_project\_api\_key](#output\_collaborator\_project\_api\_key) | Collaborator Project API Key |
| <a name="output_collaborator_project_id"></a> [collaborator\_project\_id](#output\_collaborator\_project\_id) | Collaborator Project ID |
<!-- END_TF_DOCS -->
