# main.tf

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  # Optional tags using for_each
  tags = length(var.tags) > 0 ? { for key, value in var.tags : key => value } : {}
}
