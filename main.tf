provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "casestudy" {
  name     = "casestudy"
  location = "East US"
}
resource "azurerm_storage_account" "vennelacasestudy143" {
    name                     = "vennelacasestudy134"
    resource_group_name      = azurerm_resource_group.casestudy.name
    location                 = azurerm_resource_group.casestudy.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}
