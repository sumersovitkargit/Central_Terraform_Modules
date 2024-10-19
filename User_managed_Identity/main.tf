resource "azurerm_user_assigned_identity" "my_identity" {
  name                = var.identity_name
  resource_group_name = var.resource_group_name
  location            = var.location

}