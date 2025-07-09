output "hostpool_id" {
  value = azurerm_virtual_desktop_host_pool.this.id
}

output "app_group_id" {
  value = azurerm_virtual_desktop_application_group.dag.id
}

output "vm_ids" {
  value = azurerm_windows_virtual_machine.session[*].id
}
