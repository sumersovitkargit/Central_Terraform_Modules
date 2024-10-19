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

  app_settings                             = var.app_settings
  auth_settings                            = var.auth_settings
  auth_settings_v2                         = var.auth_settings_v2
  backup                                   = var.backup
  client_affinity_enabled                  = var.client_affinity_enabled
  client_certificate_enabled               = var.client_certificate_enabled
  client_certificate_mode                  = var.client_certificate_mode
  client_certificate_exclusion_paths       = var.client_certificate_exclusion_paths
  connection_string                        = var.connection_string
  enabled                                  = var.enabled
  ftp_publish_basic_authentication_enabled = var.ftp_publish_basic_authentication_enabled
  https_only                               = var.https_only
  public_network_access_enabled            = var.public_network_access_enabled
  identity                                 = var.identity
  key_vault_reference_identity_id          = var.key_vault_reference_identity_id
  logs                                     = var.logs
  sticky_settings                          = var.sticky_settings
  storage_account                          = var.storage_account
  tags                                     = var.tags
  virtual_network_subnet_id                = var.virtual_network_subnet_id
  webdeploy_publish_basic_authentication_enabled = var.webdeploy_publish_basic_authentication_enabled
  zip_deploy_file                          = var.zip_deploy_file
}
