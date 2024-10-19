resource "azurerm_mssql_database" "databases" {
  for_each                     = var.databases
  name                         = each.key                                # Database name
  server_id                    = var.server_id                           # SQL Server ID (passed from the calling module)
  collation                    = lookup(each.value, "collation", "SQL_Latin1_General_CP1_CI_AS")  # Default collation
  sku_name                     = lookup(each.value, "edition", "Basic")                         # Default to "Basic"
  
  # Optional properties (like max_size_gb, requested_service_objective_name, etc.) can be added here as needed
}