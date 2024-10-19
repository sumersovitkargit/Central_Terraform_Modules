variable "identity_name" {
  description = "The name of the Application Insights resource."
  type        = string
}

variable "location" {
  description = "The Azure Region where Application Insights will be deployed."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group where Application Insights will be created."
  type        = string
}