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
  

variable "storage_account_tier" {
  description = "Account-Tier"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication" {
  description = "Replication-Account"
  type        = string
  default     = "LRS"
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
