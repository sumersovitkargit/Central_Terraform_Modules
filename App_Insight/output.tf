output "instrumentation_key" {
  description = "The Instrumentation Key for the Application Insights resource."
  value       = azurerm_application_insights.app_insights.instrumentation_key
  sensitive = true
}

output "connection_string" {
  description = "The connection string for the Application Insights resource."
  value       = azurerm_application_insights.app_insights.connection_string
  sensitive = true
}