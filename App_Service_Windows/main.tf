provider "azurerm" {
  features {}
}

resource "azurerm_windows_web_app" "webapp" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  site_config {
  }
  
  app_settings = merge(
    var.app_settings,
    {
      "APPINSIGHTS_INSTRUMENTATIONKEY" = var.app_insights_instrumentation_key
      "APPLICATIONINSIGHTS_CONNECTION_STRING" = var.app_insights_connection_string
    }
  )
}
