variable "sql_server_name" {
  description = "The name of the Azure SQL Server."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group where the SQL Server should exist."
  type        = string
}

variable "location" {
  description = "The Azure Region where the SQL Server should exist."
  type        = string
}

variable "version" {
  description = "The version of the SQL Server."
  type        = string
  default     = "12.0" # Example: can be changed to other versions as needed
}

variable "administrator_login" {
  description = "The login for the Azure AD administrator."
  type        = string
}

variable "administrator_object_id" {
  description = "The object ID of the Azure AD administrator."
  type        = string
}





