# variables.tf

# Mandatory variable for resource group name
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

# Mandatory variable for location (no default value, must be provided)
variable "location" {
  description = "The location for the resource group"
  type        = string
}

# Optional tags (default to empty map if not provided)
variable "tags" {
  description = "Optional tags to assign to the resource group"
  type        = map(string)
  default     = {}
}
