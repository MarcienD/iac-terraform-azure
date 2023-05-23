variable "resource_group_name" {
  type    = string
  default = "example-resource-group"
}

variable "resource_group_location" {
  type    = string
  default = "west europe"
}

variable "storage_account_name" {
  type    = string
  default = "example-storage-account"
}

variable "storage_account_tier" {
  type = string
  default "Standard"
}


variable "storage_container_name" {
  type    = string
  default = "example-container"
}

variable "storage_blob_name" {
  type    = string
  default = "example-blob"
}
