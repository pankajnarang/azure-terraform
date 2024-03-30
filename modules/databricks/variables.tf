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

variable "databricks_name" {
  description = "The name of databricks workspace"
  type        = string
}