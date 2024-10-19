resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.version


  azuread_administrator {
    login                         = var.administrator_login
    object_id                    = var.administrator_object_id
    azuread_authentication_only   = true
  }

  
}