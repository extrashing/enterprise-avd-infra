resource "azurerm_virtual_machine_extension" "domain_join" {
  name                 = "joindomain"
  virtual_machine_id   = var.vm_id
  publisher            = "Microsoft.Compute"
  type                 = "JsonADDomainExtension"
  type_handler_version = "1.3"

  settings = jsonencode({
    Name               = var.domain_name
    OUPath             = var.ou_path
    User               = var.domain_join_user
    Restart            = "true"
    Options            = "3"
  })

  protected_settings = jsonencode({
    Password = var.domain_join_password
  })
}
