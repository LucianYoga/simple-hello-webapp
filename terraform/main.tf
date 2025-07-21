provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "webapp" {
  name     = "simple-hello-webapp-rg"
  location = "Central US"
}

resource "azurerm_app_service_plan" "webapp" {
  name                = "simple-hello-webapp-plan"
  location            = azurerm_resource_group.webapp.location
  resource_group_name = azurerm_resource_group.webapp.name
  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "webapp" {
  name                = "simple-hello-webapp"
  location            = azurerm_resource_group.webapp.location
  resource_group_name = azurerm_resource_group.webapp.name
  app_service_plan_id = azurerm_app_service_plan.webapp.id
  site_config {
    always_on = true
  }
}