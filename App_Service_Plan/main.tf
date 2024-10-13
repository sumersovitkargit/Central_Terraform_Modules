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

  app_service_environment_id      = lookup(var.app_service_environment_id, "app_service_environment_id", null)
  maximum_elastic_worker_count    = lookup(var.maximum_elastic_worker_count, "maximum_elastic_worker_count", null)
  worker_count                    = lookup(var.worker_count, "worker_count", null)
  per_site_scaling_enabled        = lookup(var.per_site_scaling_enabled, "per_site_scaling_enabled", false)
  zone_balancing_enabled          = lookup(var.zone_balancing_enabled, "zone_balancing_enabled", null)
  tags                            = lookup(var.tags, "tags", {})

  lifecycle {
    ignore_changes = [per_site_scaling_enabled]
  }
}
