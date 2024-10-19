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

variable "app_settings" {
  description = "A map of key-value pairs of App Settings."
  type        = map(string)
  default     = {}
}

variable "auth_settings" {
  description = "An auth_settings block."
  type        = map(any)
  default     = {}
}

variable "auth_settings_v2" {
  description = "An auth_settings_v2 block."
  type        = map(any)
  default     = {}
}

variable "backup" {
  description = "A backup block."
  type        = map(any)
  default     = {}
}

variable "client_affinity_enabled" {
  description = "Should Client Affinity be enabled?"
  type        = bool
  default     = false
}

variable "client_certificate_enabled" {
  description = "Should Client Certificates be enabled?"
  type        = bool
  default     = false
}

variable "client_certificate_mode" {
  description = "The Client Certificate mode. Possible values are Required, Optional, and OptionalInteractiveUser."
  type        = string
  default     = "Optional"
}

variable "client_certificate_exclusion_paths" {
  description = "Paths to exclude when using client certificates, separated by ;."
  type        = string
  default     = ""
}

variable "connection_string" {
  description = "One or more connection_string blocks."
  type        = map(any)
  default     = {}
}

variable "enabled" {
  description = "Should the Windows Web App be enabled?"
  type        = bool
  default     = true
}

variable "ftp_publish_basic_authentication_enabled" {
  description = "Should the default FTP Basic Authentication publishing profile be enabled?"
  type        = bool
  default     = true
}

variable "https_only" {
  description = "Should the Windows Web App require HTTPS connections?"
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  description = "Should public network access be enabled for the Web App?"
  type        = bool
  default     = true
}

variable "identity" {
  description = "An identity block."
  type        = map(any)
  default     = {}
}

variable "key_vault_reference_identity_id" {
  description = "The User Assigned Identity ID used for accessing KeyVault secrets."
  type        = string
  default     = ""
}

variable "logs" {
  description = "A logs block."
  type        = map(any)
  default     = {}
}

variable "sticky_settings" {
  description = "A sticky_settings block."
  type        = map(any)
  default     = {}
}

variable "storage_account" {
  description = "One or more storage_account blocks."
  type        = map(any)
  default     = {}
}

variable "tags" {
  description = "A mapping of tags which should be assigned to the Windows Web App."
  type        = map(string)
  default     = {}
}

variable "virtual_network_subnet_id" {
  description = "The subnet id which will be used by this Web App for regional virtual network integration."
  type        = string
  default     = ""
}

variable "webdeploy_publish_basic_authentication_enabled" {
  description = "Should the default WebDeploy Basic Authentication publishing credentials be enabled?"
  type        = bool
  default     = true
}

variable "zip_deploy_file" {
  description = "The local path and filename of the Zip packaged application to deploy to this Windows Web App."
  type        = string
  default     = ""
}