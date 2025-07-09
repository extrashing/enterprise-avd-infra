output "admin_assignment" {
  value = azurerm_role_assignment.avd_admin.id
}

output "user_assignment" {
  value = azurerm_role_assignment.avd_user.id
}
