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

variable "vault_name" {
  description = "Key vault name"
  type        = string
}

variable "object_id" {
  description = "The object ID of the current tenant"
  type        = string
}
