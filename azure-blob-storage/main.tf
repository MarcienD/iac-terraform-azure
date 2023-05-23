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
  name                     = var.container_name
  storage_account_name     = azurem_storage_account.example.name
  container_acces_type     = var.container_acces_type
}

resource "azurem_storage_blob" "example" {
   name                    = var.blob_name
   storage_account_name    = azurem_storage_account.example.name
   type                    = var.blob_type
   source_content           = var.blob_path
}
