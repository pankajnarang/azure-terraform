terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "~> 2.47.0"
    }
    random  = {
      source = "hashicorp/random"
      version = "~> 3.6.0"
    }
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "random_pet" "random" {}
resource "azurerm_resource_group" "pankajnarang" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

# shift+option+A to comment / uncomment multiple lines
/* module "storage_account" {
  source = "./modules/storage_account"
  resource_group_name = var.resource_group_name
  storage_account_name = var.storage_account_name
  location = var.location
  source_folder_name = var.source_folder_name
  destination_folder_name = var.destination_folder_name
  extra_folder_name = var.extra_folder_name
  tags = var.tags
  depends_on = [ azurerm_resource_group.pankajnarang ]
} */

/* module "databricks" {
  source              = "./modules/databricks"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
  databricks_name     = var.databricks_name
  depends_on          = [azurerm_resource_group.pankajnarang]
} */

module "vault" {
  source              = "./modules/key_vault"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
  vault_name          = var.vault_name
  object_id           = var.object_id
  depends_on          = [azurerm_resource_group.pankajnarang]
}