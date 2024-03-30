variable "resource_group_name" {
  description = "The name of the resource group, a container for all our resources"
  type        = string
}

variable "location" {
  description = "Azure region to create resources in"
  type        = string
}

variable "tags" {
  description = "mapping of tags for resources"
  type        = map(string)
}

variable "storage_account_name" {
  description = "storage account name"
  type        = string
}

variable "source_folder_name" {
  description = "source folder name"
  type        = string
}

variable "destination_folder_name" {
  description = "destination folder name"
  type        = string
}

variable "extra_folder_name" {
  description = "extra folder name"
  type        = string
}

variable "container_access_type" {
  description = "container access type"
  type        = string
  default     = "private"
}