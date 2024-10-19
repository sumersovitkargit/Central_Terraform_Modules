provider "azurerm" {
  features {}
}

resource "azurerm_windows_web_app" "webapp" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  site_config {
    # Add specific site configuration options here
  }

  app_settings                             = lookup(var.optional_values, "app_settings", null)
  auth_settings                            = lookup(var.optional_values, "auth_settings", null)
  auth_settings_v2                         = lookup(var.optional_values, "auth_settings_v2", null)
  backup                                   = lookup(var.optional_values, "backup", null)
  client_affinity_enabled                  = lookup(var.optional_values, "client_affinity_enabled", null)
  client_certificate_enabled               = lookup(var.optional_values, "client_certificate_enabled", null)
  client_certificate_mode                  = lookup(var.optional_values, "client_certificate_mode", null)
  client_certificate_exclusion_paths       = lookup(var.optional_values, "client_certificate_exclusion_paths", null)
  connection_string                        = lookup(var.optional_values, "connection_string", null)
  enabled                                  = lookup(var.optional_values, "enabled", true)
  ftp_publish_basic_authentication_enabled = lookup(var.optional_values, "ftp_publish_basic_authentication_enabled", true)
  https_only                               = lookup(var.optional_values, "https_only", false)
  public_network_access_enabled            = lookup(var.optional_values, "public_network_access_enabled", true)
  identity                                 = lookup(var.optional_values, "identity", null)
  key_vault_reference_identity_id          = lookup(var.optional_values, "key_vault_reference_identity_id", null)
  logs                                     = lookup(var.optional_values, "logs", null)
  sticky_settings                          = lookup(var.optional_values, "sticky_settings", null)
  storage_account                          = lookup(var.optional_values, "storage_account", null)
  tags                                     = lookup(var.optional_values, "tags", {})
  virtual_network_subnet_id                = lookup(var.optional_values, "virtual_network_subnet_id", null)
  webdeploy_publish_basic_authentication_enabled = lookup(var.optional_values, "webdeploy_publish_basic_authentication_enabled", true)
  zip_deploy_file                          = lookup(var.optional_values, "zip_deploy_file", null)
}
