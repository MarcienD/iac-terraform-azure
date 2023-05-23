variable "resource_group_name" {
  type = string
  default = "example-resource-group"
}

variable "resource_group_location" {
  type = string
  default = "westeurope"
}

variable "storage_account_name" {
  type = string
  default = "example-storage"
}  

variable "storage_account_tier" {
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  type        = string
  default     = "LRS"
}
  
variable "app_service_plan_name" {
  type        = string
  default     = "example-app-service-plan"
}
  
  variable "app_service_plan_sku_tier" {
    type        = string
    default     = "Standard"
  }
  
  variable "app_service_plan_sku_size" {
    type      = string
    default   = "S1"
  }

variable "function_app_name" {
  type = string
  default = "example-function-app"
}

variable "function_name" {
  type = string
  default = "example-function"
}

 variable "config_json" {
  type = map(any)
  default = {
      "bindings": [
        {
          "authLevel": "anonymous",
          "type": "httpTrigger",
          "direction": "in",
          "name": "req",
          "methods": ["get", 
          ]
        },
        {
          "type": "http",
          "direction": "out",
          "name": "$return"
        }
      ]
    }
 } 
