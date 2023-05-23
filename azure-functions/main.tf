resource "azurerm_resource_group" "example" {
   name   = var.resource_group_name
   location = var.resource_group_location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_linux_function_app" "example" {
  name                      = var.function_app_name
  resource_group_name       = azurerm_resource_group.example.name
  location                  = azurerm_resource_group.example.location
  service_plan_id           = azurerm_app_service_plan.example.id
  storage_account_name      = azurerm_storage_account.example.name
  site_config {
  }
}

resource "azurerm_function_app_function" "example" {
  name                      = var.function_name
  function_app_id           = azurerm_linux_function_app.example.id
    config_json = <<JSON
    {
      "bindings": [
        {
          "authLevel": "anonymous",
          "type": "httpTrigger",
          "direction": "in",
          "name": "req",
          "methods": [
            "get",
            "post"
          ]
        },
        {
          "type": "http",
          "direction": "out",
          "name": "$return"
        }
      ]
    }
  JSON
  
}

