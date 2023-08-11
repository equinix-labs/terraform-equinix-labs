# Terraform Equinix Labs K3s Setup Example

This is an example of how to utilize the root module to deploy the [invite-from-csv](https://github.com/equinix-labs/terraform-equinix-labs/tree/main/modules/invite-from-csv) module and the [k3s](https://github.com/equinix-labs/terraform-equinix-metal-k3s) module. In this example, each user identified in the `users.csv` file (see users.csv.example) will have a project provisioned and an invitation sent by email to join that project. Kubernetes will then be provisioned into each user's project with the configurations set within the [variables.tf](./variables.tf) file.

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
| <a name="module_deploy_k3s"></a> [deploy\_k3s](#module\_deploy\_k3s) | ../../ | n/a |
| <a name="module_workshop_setup"></a> [workshop\_setup](#module\_workshop\_setup) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_k3s"></a> [enable\_k3s](#input\_enable\_k3s) | Enable K3s module | `bool` | `true` | no |
| <a name="input_enable_workshop_setup"></a> [enable\_workshop\_setup](#input\_enable\_workshop\_setup) | Enable Workshop Setup module | `bool` | `true` | no |
| <a name="input_global_ip"></a> [global\_ip](#input\_global\_ip) | Enables a global anycast IPv4 that will be shared for all clusters in all metros | `string` | `false` | no |
| <a name="input_k3s_config"></a> [k3s\_config](#input\_k3s\_config) | Module configuration for K3s module | <pre>list(object({<br>    name                    = string<br>    metro                   = string<br>    plan_control_plane      = string<br>    plan_node               = string<br>    node_count              = number<br>    k3s_ha                  = bool<br>    os                      = string<br>    control_plane_hostnames = string<br>    node_hostnames          = string<br>    custom_k3s_token        = string<br>    ip_pool_count           = number<br>    k3s_version             = string<br>    metallb_version         = string<br>  }))</pre> | <pre>[<br>  {<br>    "control_plane_hostnames": "k3s-cp",<br>    "custom_k3s_token": "",<br>    "ip_pool_count": 1,<br>    "k3s_ha": false,<br>    "k3s_version": "v1.4.stable.1",<br>    "metallb_version": "",<br>    "metro": "SV",<br>    "name": "k3s-cluster",<br>    "node_count": 3,<br>    "node_hostnames": "k3s-node",<br>    "os": "debian_11",<br>    "plan_control_plane": "c3.small.x86",<br>    "plan_node": "c3.small.x86"<br>  }<br>]</pre> | no |
| <a name="input_metal_auth_token"></a> [metal\_auth\_token](#input\_metal\_auth\_token) | Equinix Metal user api token. | `string` | n/a | yes |
| <a name="input_metal_organization_id"></a> [metal\_organization\_id](#input\_metal\_organization\_id) | Equinix Metal organization id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deploy_k3s_outputs"></a> [deploy\_k3s\_outputs](#output\_deploy\_k3s\_outputs) | Outputs of the Deploy K3s module |
| <a name="output_workshop_setup_outputs"></a> [workshop\_setup\_outputs](#output\_workshop\_setup\_outputs) | Outputs of the Workshop Setup module |
<!-- END_TF_DOCS -->
