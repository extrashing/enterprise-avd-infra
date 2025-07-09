output "vnet_name" {
  value = azurerm_virtual_network.this.name
}

output "subnet_ids" {
  value = {
    avd_hosts   = azurerm_subnet.avd_hosts.id
    domain_join = azurerm_subnet.domain_join.id
    management  = azurerm_subnet.management.id
  }
}
