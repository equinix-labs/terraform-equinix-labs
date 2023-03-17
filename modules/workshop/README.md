# Workshop Module

This the workshop module.

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

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_project_setup"></a> [project\_setup](#module\_project\_setup) | ../invite-from-csv | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_workshop_organization_id"></a> [workshop\_organization\_id](#input\_workshop\_organization\_id) | Equinix Metal organization id | `string` | n/a | yes |
| <a name="input_workshop_csv_file"></a> [workshop\_csv\_file](#input\_workshop\_csv\_file) | Path to a CSV file containing a list of projects to provision: email,metro,plan. Email address is used as the project name and the collaborator. Metro and plan are used to provision the project. | `string` | `"users.csv"` | no |
| <a name="input_workshop_send_invites"></a> [workshop\_send\_invites](#input\_workshop\_send\_invites) | Wether Collaborator invitations should be sent. This could be toggled after a successful provision to prevent sending invitations to a project that could be deleted during a reprovision | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_workshop_outpus"></a> [workshop\_outpus](#output\_workshop\_outpus) | Outputs of the workshop |
<!-- END_TF_DOCS -->
