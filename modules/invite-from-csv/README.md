# Terraform Equinix Labs Invite from CSV Module

This module reads a given filename `users.csv`, identifies each user entry in the file, then calls [collaborator-project](../collaborator-project/) module to create a project for them.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_equinix"></a> [equinix](#requirement\_equinix) | >= 1.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_equinix"></a> [equinix](#provider\_equinix) | 1.14.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_project_invite_setup"></a> [project\_invite\_setup](#module\_project\_invite\_setup) | ../collaborator-project | n/a |

## Resources

| Name | Type |
|------|------|
| [equinix_metal_organization.org](https://registry.terraform.io/providers/equinix/equinix/latest/docs/data-sources/metal_organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_csv_file"></a> [csv\_file](#input\_csv\_file) | Path to a CSV file containing a list of projects to provision: email,metro,plan. Email address is used as the project name and the collaborator. Metro and plan are used to provision the project. | `string` | `"users.csv"` | no |
| <a name="input_metal_organization_id"></a> [metal\_organization\_id](#input\_metal\_organization\_id) | Equinix Metal organization id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_invite_from_csv_outputs"></a> [invite\_from\_csv\_outputs](#output\_invite\_from\_csv\_outputs) | Outputs of the invite\_from\_csv |
<!-- END_TF_DOCS -->
