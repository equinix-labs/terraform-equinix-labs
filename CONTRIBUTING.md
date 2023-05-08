# Contributing

This document provides guidelines for contributing to the module.

Contributors to this project must abide by the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md).

## File structure

The project has the following folders and files:

- /: root folder.
- /examples: Examples for using this module.
- /modules: Inline local modules called by this module.
- /main.tf: Main file for this module, contains all the resources to operate the module.
- /variables.tf: All the variables necessary for run the module.
- /output.tf: The outputs generate from the module.
- /README.md: Main repo README document.
- /CHANGELOG.md: Module release changelog file.
- /CODEOWNERS: Module contributing developers.
- /CODE_OF_CONDUCT.md: Code of Conduct file.
- /CONTRIBUTING.md: This file.

## Adding a new module

To add a new module, fork this repo then add your module under [./modules](./modules/) folder. Please visit our [Terraform Module Development Standards guide](https://github.com/equinix-labs/equinix-labs/blob/main/terraform-module-standards.md) for more info on module development best practices.

## Issues and Change Requests

Please submit change requests and / or features via [Issues](https://github.com/equinix-labs/terraform-equinix-labs/issues).

## Submitting Pull Requests

Before starting any work or sending us a pull request, please ensure that:

- Your working branch is up-to-date with the latest source on the main branch.
- Check issues and pull requests (open/merged) to make sure someone else hasn't already addressed that issue.
- You open an issue to discuss your proposal.

To learn how to send us a pull request, please see [Contributing to Projects](https://docs.github.com/en/get-started/quickstart/contributing-to-projects) in the GitHub Docs.
