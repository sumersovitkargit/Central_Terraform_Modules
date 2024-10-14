variable "name" {
  description = "The name of the Windows Web App"
  type        = string
}

variable "location" {
  description = "The Azure Region where the Windows Web App should exist"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group where the Windows Web App should exist"
  type        = string
}

variable "service_plan_id" {
  description = "The ID of the Service Plan for the Windows Web App"
  type        = string
}

variable "optional_values" {
  description = "A map of optional values for the Windows Web App"
  type        = map(any)
  default = {
    app_settings                             = null
    auth_settings                            = null
    auth_settings_v2                         = null
    backup                                   = null
    client_affinity_enabled                  = null
    client_certificate_enabled               = null
    client_certificate_mode                  = null
    client_certificate_exclusion_paths       = null
    connection_string                        = null
    enabled                                  = true
    ftp_publish_basic_authentication_enabled = true
    https_only                               = false
    public_network_access_enabled            = true
    identity                                 = null
    key_vault_reference_identity_id          = null
    logs                                     = null
    sticky_settings                          = null
    storage_account                          = null
    tags                                     = {}
    virtual_network_subnet_id                = null
    webdeploy_publish_basic_authentication_enabled = true
    zip_deploy_file                          = null
  }
}
