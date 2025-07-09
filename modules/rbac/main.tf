resource "azurerm_role_assignment" "avd_admin" {
  principal_id         = var.admin_object_id
  role_definition_name = "Contributor"
  scope                = var.scope
}

resource "azurerm_role_assignment" "avd_user" {
  principal_id         = var.user_object_id
  role_definition_name = "Desktop Virtualization User"
  scope                = var.app_group_id
}
