resource "azurerm_resource_group" "example" {
   name   = var.resource_group_name
   location = var.resoutce_group_location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurem_storage_container" "example" {
  
