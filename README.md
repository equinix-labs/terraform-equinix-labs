# terraform-equinix-labs

<!-- TEMPLATE: Review all "TEMPLATE" comments and remove them when applied. -->
<!-- TEMPLATE: replace "template" with the name of your project. The prefix "terraform-equinix-" informs the Terraform registry that this project is a Terraform module associated with the Equinix provider, preserve this prefix. -->
[![Experimental](https://img.shields.io/badge/Stability-Experimental-red.svg)](https://github.com/equinix-labs/standards#about-uniform-standards)
[![run-pre-commit-hooks](https://github.com/equinix-labs/terraform-equinix-labs/actions/workflows/pre-commit.yaml/badge.svg)](https://github.com/equinix-labs/terraform-equinix-template/actions/workflows/pre-commit.yaml)
[![generate-terraform-docs](https://github.com/equinix-labs/terraform-equinix-labs/actions/workflows/documentation.yaml/badge.svg)](https://github.com/equinix-labs/terraform-equinix-template/actions/workflows/documentation.yaml)

## Usage

This project is experimental and supported by the user community. Equinix does not provide support for this project.

Install Terraform using the [tfenv](https://github.com/tfutils/tfenv) utility.

This project may be forked, cloned, or downloaded and modified as needed as the base in your integrations and deployments.

This project may also be used as a [Terraform module](https://learn.hashicorp.com/collections/terraform/modules).

To use this module in a new project, create a file such as:

```hcl
# main.tf
terraform {
  required_providers {
    equinix = {
      source = "equinix/equinix"
    }
}

module "example" {
  source = "github.com/equinix-labs/template"
  # TEMPLATE: replace "template" with the name of the repo after the terraform-equinix- prefix.

  # Published modules can be sourced as:
  # source = "equinix-labs/template/equinix"
  # See https://www.terraform.io/docs/registry/modules/publish.html for details.

  # version = "0.1.0"

  # TEMPLATE: insert required variables here
}
```

Install [pre-commit](https://pre-commit.com/#install) with its prerequesites: [python](https://docs.python.org/3/using/index.html) and [pip](https://pip.pypa.io/en/stable/installation/).

Configure pre-commit: `pre-commit install`.

Install required packages: [tflint](https://github.com/terraform-linters/tflint), [tfsec](https://aquasecurity.github.io/tfsec/v1.0.11/getting-started/installation/), [shfmt](https://github.com/mvdan/sh), [shellcheck](https://github.com/koalaman/shellcheck), and [markdownlint](https://github.com/markdownlint/markdownlint).

Run `terraform init -upgrade` and `terraform apply`.

## Module Documentation

The main README.md, the modules README.md and the examples README.md are populated by [terraform-docs worflow job](.github/workflows/documentation.yaml). The following sections are appended between the terraform-docs delimeters: Requiremenents, Providers, Modules, Resources, Inputs, and Outputs.

## Examples

To view examples for how you can leverage this module, please see the [examples](examples/) directory.

<!-- BEGIN_TF_DOCS -->

<!-- END_TF_DOCS -->
## Contributing

If you would like to contribute to this module, see [CONTRIBUTING](CONTRIBUTING.md) page.

## License

Apache License, Version 2.0. See [LICENSE](LICENSE).
<!-- TEMPLATE: Expand this section with any additional information or requirements. -->
