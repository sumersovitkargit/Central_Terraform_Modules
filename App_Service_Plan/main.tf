provider "azurerm" {
  features {}
}

resource "azurerm_app_service_plan" "asp" {
  depends_on = [azurerm_resource_group.rg]
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  #os_type             = var.os_type
  kind              = var.os_type
  sku {
    tier = lookup(var.sku, "tier", null)
    size = var.sku_name
  }

tags = var.tags
}