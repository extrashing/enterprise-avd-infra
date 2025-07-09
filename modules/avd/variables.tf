variable "vm_count" {
  type        = number
  description = "Number of AVD session hosts"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the RG"
}

variable "subnet_id" {
  type        = string
  description = "Subnet where VMs will be deployed"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the VM"
}

variable "admin_password" {
  type        = string
  description = "Admin password for the VM"
  sensitive   = true
}
