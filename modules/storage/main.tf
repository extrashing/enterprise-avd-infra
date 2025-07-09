resource "azurerm_storage_account" "fslogix" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_https_traffic_only = true
  is_hns_enabled           = false
  min_tls_version          = "TLS1_2"
}

resource "azurerm_storage_share" "fslogix" {
  name                 = "fslogixprofiles"
  storage_account_name = azurerm_storage_account.fslogix.name
  quota                = 100
}
