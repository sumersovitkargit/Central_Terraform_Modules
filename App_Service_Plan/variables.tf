# Required Variables
variable "name" {
  description = "The name which should be used for this Service Plan."
  type        = string
}

variable "location" {
  description = "The Azure Region where the Service Plan should exist."
  type        = string
}

variable "os_type" {
  description = "The O/S type for the App Services to be hosted in this plan."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group where the Service Plan should exist."
  type        = string
}

variable "sku_name" {
  description = "The SKU for the plan (e.g., B1, P1v2, S1)."
  type        = string
}


# Optional Variables Grouped into a Map
variable "tags" {
  description = "A mapping of tags which should be assigned to the AppService."
  type        = map(string)
  default     = {}
}

variable "worker_count" {
  description = "The number of Workers (instances) to be allocated."
  type        = number
  default     = null
}

variable "per_site_scaling_enabled" {
  description = "Should Per Site Scaling be enabled."
  type        = bool
  default     = false
}

variable "zone_balancing_enabled" {
  description = "Should the Service Plan balance across Availability Zones."
  type        = bool
  default     = false
}

# Define the optional values separately as needed
variable "app_service_environment_id" {
  description = "The ID of the App Service Environment to create this Service Plan in."
  type        = string
  default     = null
}

variable "maximum_elastic_worker_count" {
  description = "The maximum number of workers to use in an Elastic SKU Plan."
  type        = number
  default     = null
}