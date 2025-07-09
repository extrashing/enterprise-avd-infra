variable "scope" {
  type        = string
  description = "Scope for admin RBAC (typically the RG or subscription)"
}

variable "admin_object_id" {
  type        = string
  description = "Azure AD object ID of the AVD admin"
}

variable "user_object_id" {
  type        = string
  description = "Azure AD object ID of the AVD user"
}

variable "app_group_id" {
  type        = string
  description = "ID of the AVD app group"
}
