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

# Application Insights Integration Variables
variable "app_insights_instrumentation_key" {
  description = "The instrumentation key for the Application Insights resource."
  type        = string
}

variable "app_insights_connection_string" {
  description = "The connection string for the Application Insights resource."
  type        = string
}
