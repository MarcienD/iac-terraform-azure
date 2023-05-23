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
  default = "Standard"
}

variable "storage_account_replication" {
  type = string
  default = "LRS"
}

variable "storage_container_name" {
  type    = string
  default = "example-container"
}

variable "container_acces_type" {
  type = string
  default = "public"
}

 variable "blob_name" {
   type = string
   default = "example-blob"
 }

variable "blob_type" {
  type = string
  default "example-blob-file.txt"
}

 variable "blob_path"{
   type = string
   default = "Terraform\example-blob-file.txt"
 }
  

