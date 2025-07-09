variable "location" {}
variable "resource_group_name" {}
variable "hostpool_name" {}
variable "vm_count" { default = 2 }
variable "vm_prefix" { default = "avd-host" }
variable "vm_size" { default = "Standard_D2s_v3" }
variable "admin_username" {}
variable "admin_password" { sensitive = true }
variable "subnet_id" {}
