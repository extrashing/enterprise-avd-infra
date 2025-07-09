variable "admin_username" {
  type        = string
  description = "AVD admin username"
}

variable "admin_password" {
  type        = string
  description = "AVD admin password"
  sensitive   = true
}

variable "vm_count" {
  type        = number
  default     = 2
  description = "Number of AVD session hosts"
}
