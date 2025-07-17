provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "casestudy"
  location = "East US"
}
