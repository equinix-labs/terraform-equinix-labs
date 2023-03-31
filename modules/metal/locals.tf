locals {
  ssh_key_name = format("%s-%s", var.module_config.cluster_name, random_string.ssh_key_suffix.result)
}
