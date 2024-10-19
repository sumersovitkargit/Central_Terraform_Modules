output "database_ids" {
  description = "A map of database names and their respective IDs"
  value       = { for db in azurerm_mssql_database.databases : db.name => db.id }
}

output "database_names" {
  description = "List of database names"
  value       = [for db in azurerm_mssql_database.databases : db.name]
}