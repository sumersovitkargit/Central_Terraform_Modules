output "sql_server_id" {
  description = "The ID of the Azure SQL Server."
  value       = azurerm_mssql_server.sql_server.id
}

output "sql_server_fully_qualified_domain_name" {
  description = "The fully qualified domain name of the SQL Server."
  value       = azurerm_mssql_server.sql_server.fully_qualified_domain_name
}