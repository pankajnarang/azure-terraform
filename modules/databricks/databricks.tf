resource "azurerm_databricks_workspace" "databricks" {
  name                        = var.databricks_name
  resource_group_name         = var.resource_group_name
  location                    = var.location
  sku                         = "standard"
  managed_resource_group_name = "pnarang-mng-rg"
  tags                        = var.tags
}