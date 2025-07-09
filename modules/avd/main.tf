resource "azurerm_virtual_desktop_host_pool" "this" {
  name                = var.hostpool_name
  location            = var.location
  resource_group_name = var.resource_group_name
  type                = "Pooled"
  load_balancer_type  = "BreadthFirst"
  maximum_sessions_allowed = 6
  friendly_name       = "AVD Enterprise Host Pool"
  validate_environment = true
}

resource "azurerm_virtual_desktop_application_group" "dag" {
  name                = "${var.hostpool_name}-dag"
  location            = var.location
  resource_group_name = var.resource_group_name
  type                = "Desktop"
  host_pool_id        = azurerm_virtual_desktop_host_pool.this.id
  friendly_name       = "AVD App Group"
}

resource "azurerm_windows_virtual_machine" "session" {
  count               = var.vm_count
  name                = "${var.vm_prefix}${count.index + 1}"
  location            = var.location
  resource_group_name = var.resource_group_name
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [
    azurerm_network_interface.session[count.index].id
  ]
  provision_vm_agent  = true
  enable_automatic_updates = true
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "windows-11"
    sku       = "win11-22h2-avd"
    version   = "latest"
  }
}

resource "azurerm_network_interface" "session" {
  count               = var.vm_count
  name                = "${var.vm_prefix}${count.index + 1}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}
