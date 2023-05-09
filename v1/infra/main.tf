terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.9.14"
    }
  }
}

provider "proxmox" {
    # Configuration options
    pm_api_url = var.pm_api_url
    pm_user = var.pm_user
    pm_password = var.pm_password
    pm_debug = true
    pm_tls_insecure = "true"
}

resource "proxmox_vm_qemu" "proxmox_infra" {
    count       = 5

    # Configure VM-Name
    name        = "vm-${count.index}"
    vmid        = 201+count.index 
    clone       = "debian-11-tonylab-template"
    target_node = "pve"
    pool        = "tony-lab"
    # Configure IP here, range : 200/210
    ipconfig0   = "ip=192.168.1.${200 + count.index + 1}/24,gw=192.168.1.1"
    scsihw      = "virtio-scsi-pci"
    memory      = 2048
    cores       = 2

    network {
        bridge  = "vmbr0"
        model   = "virtio"
    }

    disk {
        size    = "20G"
        type    = "scsi"
        storage = "local-lvm"
    }
}

variable pm_user {
  type        = string
  description = "Proxmox user"
}

variable pm_password {
  type        = string
  description = "Proxmox password"
}

variable pm_api_url {
  type        = string
  description = "Proxmox api url"
}