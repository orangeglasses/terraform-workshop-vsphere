terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.5.1"
    }
  }
}

provider "vsphere" {
  allow_unverified_ssl = true
  password             = var.vsphere_password
  user                 = var.vsphere_username
  vsphere_server       = var.vsphere_server
}

data "vsphere_datacenter" "test" {
  name = "datastore1"
}