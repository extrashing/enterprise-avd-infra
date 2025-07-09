variable "vm_id" {
  type        = string
  description = "VM ID to apply domain join extension"
}

variable "domain_name" {
  type        = string
  description = "AD domain name"
}

variable "ou_path" {
  type        = string
  description = "OU path to place the computer object"
}

variable "domain_join_user" {
  type        = string
  description = "Domain user with join rights"
}

variable "domain_join_password" {
  type        = string
  sensitive   = true
  description = "Password for domain join user"
}
