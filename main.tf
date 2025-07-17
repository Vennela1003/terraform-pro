provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "casestudy" {
  name     = "casestudy"
  location = "East US"
}
resource "azurerm_virtual_network" "vnet" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.casestudy.location
  resource_group_name = azurerm_resource_group.casestudy.name
}
resource "azurerm_storage_account" "vennelastorage1345" {
    name                     = "vennelastorage1345"
    resource_group_name      = azurerm_resource_group.casestudy.name
    location                 = azurerm_resource_group.casestudy.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}
