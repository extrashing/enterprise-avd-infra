module "avd" {
  source              = "./modules/avd"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = module.network.subnet_id  # adjust if needed
  vm_count            = var.vm_count
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}
