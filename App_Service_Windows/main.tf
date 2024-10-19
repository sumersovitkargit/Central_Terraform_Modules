provider "azurerm" {
  features {}
}

resource "azurerm_windows_web_app" "webapp" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  site_config {
   application_insights_key = var.app_insights_instrumentation_key
   application_insights_connection_string = var.app_insights_connection_string
  }

}
