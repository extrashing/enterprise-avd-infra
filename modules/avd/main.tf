resource "azurerm_windows_virtual_machine" "session_host" {
  count                 = var.vm_count
  name                  = "avd-host-${count.index + 1}"
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.nic[count.index].id]
  size                  = "Standard_D4s_v3"  # good for 4–8 users
  admin_username        = var.admin_username
  admin_password        = var.admin_password

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "windows-11"
    sku       = "win11-22h2-avd-m365"
    version   = "latest"
  }

  license_type = "Windows_Client"
}
