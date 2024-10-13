# outputs.tf

output "resource_group_tags" {
  description = "The tags applied to the resource group"
  value       = azurerm_resource_group.rg.tags
}

output "resource_group_id" {
  description = "The ID of the created resource group"
  value       = azurerm_resource_group.rg.id
}

output "resource_group_id" {
  description = "The ID of the created resource group"
  value       = azurerm_resource_group.rg.name
}
