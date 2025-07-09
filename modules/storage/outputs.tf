output "fslogix_path" {
  value = "https://${azurerm_storage_account.fslogix.name}.file.core.windows.net/${azurerm_storage_share.fslogix.name}"
}

output "storage_account_name" {
  value = azurerm_storage_account.fslogix.name
}
