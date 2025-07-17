provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "casestudy" {
  name     = "casestudy"
  location = "East US"
}
