resource "azurerm_virtual_network" "this" {
  name                = "vnet-avd"
  address_space       = ["10.10.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "avd_hosts" {
  name                 = "subnet-avd-hosts"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.10.1.0/24"]
}

resource "azurerm_subnet" "domain_join" {
  name                 = "subnet-domain"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.10.2.0/24"]
}

resource "azurerm_subnet" "management" {
  name                 = "subnet-management"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.10.3.0/24"]
}
