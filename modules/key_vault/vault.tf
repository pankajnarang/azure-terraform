data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "vault" {
  name                        = var.vault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name                    = "standard"
  tags = var.tags

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.object_id

    key_permissions     = ["Get", "List", "Delete"]
    secret_permissions  = ["Get", "List", "Delete"]
    storage_permissions = ["Get", "List", "Delete"]
  }
}