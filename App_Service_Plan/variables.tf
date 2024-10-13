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

variable "sku" {
  description = "The SKU tier for the plan."
  type        = map(string)
}

# Optional Variables Grouped into a Map
variable "optional_values" {
  description = "A map of optional parameters for the App Service Plan."
  type        = map(any)
  default = {
    app_service_environment_id   = null
    maximum_elastic_worker_count = null
    worker_count                 = null
    per_site_scaling_enabled     = null
    zone_balancing_enabled       = null
    tags                         = {}
  }
}
