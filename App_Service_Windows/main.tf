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

  app_settings                             = lookup(var.app_settings, "app_settings", null)
  auth_settings                            = lookup(var.auth_settings, "auth_settings", null)
  auth_settings_v2                         = lookup(var.auth_settings_v2, "auth_settings_v2", null)
  backup                                   = lookup(var.backup, "backup", null)
  client_affinity_enabled                  = lookup(var.client_affinity_enabled, "client_affinity_enabled", null)
  client_certificate_enabled               = lookup(var.client_certificate_enabled, "client_certificate_enabled", null)
  client_certificate_mode                  = lookup(var.client_certificate_mode, "client_certificate_mode", null)
  client_certificate_exclusion_paths       = lookup(var.client_certificate_exclusion_paths, "client_certificate_exclusion_paths", null)
  connection_string                        = lookup(var.connection_string, "connection_string", null)
  enabled                                  = lookup(var.enabled, "enabled", true)
  ftp_publish_basic_authentication_enabled = lookup(var.ftp_publish_basic_authentication_enabled, "ftp_publish_basic_authentication_enabled", true)
  https_only                               = lookup(var.https_only, "https_only", false)
  public_network_access_enabled            = lookup(var.public_network_access_enabled, "public_network_access_enabled", true)
  identity                                 = lookup(var.identity, "identity", null)
  key_vault_reference_identity_id          = lookup(var.key_vault_reference_identity_id, "key_vault_reference_identity_id", null)
  logs                                     = lookup(var.logs, "logs", null)
  sticky_settings                          = lookup(var.sticky_settings, "sticky_settings", null)
  storage_account                          = lookup(var.storage_account, "storage_account", null)
  tags                                     = lookup(var.tags, "tags", {})
  virtual_network_subnet_id                = lookup(var.virtual_network_subnet_id, "virtual_network_subnet_id", null)
  webdeploy_publish_basic_authentication_enabled = lookup(var.webdeploy_publish_basic_authentication_enabled, "webdeploy_publish_basic_authentication_enabled", true)
  zip_deploy_file                          = lookup(var.zip_deploy_file, "zip_deploy_file", null)
}
