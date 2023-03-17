# Invite-from-csv

This the invite-from-csv module.

## Usage

```bash
terraform init
terraform apply
```

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
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | Equinix Metal organization id | `string` | n/a | yes |
| <a name="input_csv_file"></a> [csv\_file](#input\_csv\_file) | Path to a CSV file containing a list of projects to provision: email,metro,plan. Email address is used as the project name and the collaborator. Metro and plan are used to provision the project. | `string` | `"users.csv"` | no |
| <a name="input_send_invites"></a> [send\_invites](#input\_send\_invites) | Wether Collaborator invitations should be sent. This could be toggled after a successful provision to prevent sending invitations to a project that could be deleted during a reprovision | `bool` | `true` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
