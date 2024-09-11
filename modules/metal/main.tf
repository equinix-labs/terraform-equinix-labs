# Terraform provider
terraform {
  required_version = ">= 1.3"

  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = ">= 1.10.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

# Create a new VLAN in specified datacenter
resource "equinix_metal_vlan" "provisioning_vlan" {
  description = "provisioning_vlan"
  metro       = var.module_context.metro
  project_id  = var.module_context.project_id
}

# Create a Public IP Reservation (16 addresses)
resource "equinix_metal_reserved_ip_block" "public_ips" {
  project_id = var.module_context.project_id
  type       = "public_ipv4"
  metro      = var.module_context.metro
  quantity   = 16
  tags       = concat(var.module_context.tags, ["eksa-${random_string.resource_suffix.result}"])
}

# Create a Metal Gateway
resource "equinix_metal_gateway" "gw" {
  project_id        = var.module_context.project_id
  vlan_id           = equinix_metal_vlan.provisioning_vlan.id
  ip_reservation_id = equinix_metal_reserved_ip_block.public_ips.id
}

###############
# Metal Cluster
###############

# Generate ssh_key_pair for eksa-admin and nodes
resource "tls_private_key" "ssh_key_pair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Generate random suffix to build ssh key name
resource "random_string" "ssh_key_suffix" {
  length  = 3
  special = false
  upper   = false
}

# Generate random suffix for resource names
resource "random_string" "resource_suffix" {
  length  = 6
  special = false
  upper   = false
}

# Upload ssh_pub_key to Equinix Metal
resource "equinix_metal_ssh_key" "ssh_pub_key" {
  name       = local.ssh_key_name
  public_key = chomp(tls_private_key.ssh_key_pair.public_key_openssh)
}

# Store ssh_pub_key locally
resource "local_file" "ssh_private_key" {
  content         = chomp(tls_private_key.ssh_key_pair.private_key_pem)
  filename        = pathexpand(format("~/.ssh/%s", local.ssh_key_name))
  file_permission = "0600"
}

# Provision the metal machine(s)
resource "equinix_metal_device" "metal_node" {
  count            = var.module_config.device_count
  hostname         = format("metal-${random_string.resource_suffix.result}-node-%03d", count.index + 1)
  plan             = var.module_config.device_type
  metro            = var.module_context.metro
  operating_system = var.module_config.os
  billing_cycle    = var.module_config.billing_cycle
  project_id       = var.module_context.project_id
  tags             = concat(var.module_context.tags, ["metal-${random_string.resource_suffix.result}"])
}
