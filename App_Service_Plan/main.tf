provider "azurerm" {
  features {}
}

resource "azurerm_app_service_plan" "asp" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.os_type
  sku {
    tier = lookup(var.sku, "tier", null)
    size = var.sku_name
  }

  app_service_environment_id      = lookup(var.optional_values, "app_service_environment_id", null)
  maximum_elastic_worker_count    = lookup(var.optional_values, "maximum_elastic_worker_count", null)
  worker_count                    = lookup(var.optional_values, "worker_count", null)
  per_site_scaling_enabled        = lookup(var.optional_values, "per_site_scaling_enabled", false)
  zone_balancing_enabled          = lookup(var.optional_values, "zone_balancing_enabled", null)
  tags                            = lookup(var.optional_values, "tags", {})

  lifecycle {
    ignore_changes = [per_site_scaling_enabled]
  }
}
