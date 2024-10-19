output "identity_id" {
  description = "The ID of the User-Assigned Managed Identity."
  value       = azurerm_user_assigned_identity.my_identity.id
}

output "identity_principal_id" {
  description = "The principal ID of the User-Assigned Managed Identity."
  value       = azurerm_user_assigned_identity.my_identity.principal_id
}