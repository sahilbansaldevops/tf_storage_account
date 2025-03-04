resource "azurerm_resource_group" "rg1" {
  name = var.rgname
  location = var.rglocation
}

resource "azurerm_storage_account" "stg1" {
  name = var.storageaccount_name
  resource_group_name = azurerm_resource_group.rg1.name
  location = azurerm_resource_group.rg1.location
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type
  tags = var.tag
}

