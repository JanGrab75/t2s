terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}
provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-ArkadiuszK
    storage_account_name = "starkadiusk"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_service_plan" "example" {
  name                = "arkadiusK-app-service-plan"
  location            = "westeurope"
  resource_group_name = "rg-ArkadiuszK"
  os_type             = "Linux"
  sku_name            = "P0v3"
}


resource "azurerm_linux_web_app" "example" {
  name                = "arkadiuszk-webapp-t2s-workshop-1"
  location            = "westeurope"
  resource_group_name = "rg-ArkadiuszK"
  service_plan_id     = azurerm_service_plan.example.id
  site_config {}
}
