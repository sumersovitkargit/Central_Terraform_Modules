resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"


  azuread_administrator {
    login_username                         = var.administrator_login
    object_id                    = var.administrator_object_id
    azuread_authentication_only   = true
  }

  
}