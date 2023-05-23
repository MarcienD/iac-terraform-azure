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
variable "app_service_plan_name" {
  type = string
  default = "example-app-service-plan"
}

variable "function_app_name" {
  type = string
  default = "example-function-app"
}

variable "function_name" {
  type = string
  default = "example-function"
}
