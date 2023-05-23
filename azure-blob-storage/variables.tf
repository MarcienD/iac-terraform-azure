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

variable "container_acces_type" {
  type = string
  default = "public"
}

variable "storage_container_name" {
  type    = string
  default = "example-container"
}

variable "blob_type" {
  type = string
  default "example-blob-file.txt"
}

 variable "blob_path"{
   type = string
   default = "C:\Users\dutko\termofor\Terraform\example-blob-file.txt"
 }
  
 variable "blob_name" {
   type = string
   default = "example-blob"
 }

variable "storage_blob_name" {
  type    = string
  default = "example-blob-name"
}
