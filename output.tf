output "resource_group_name" {
  description = "Name of the resource group"
  value = azurerm_resource_group.name
}

output "resource group location" {
  description = "location of the resource group"
  value = azurerm_resource_group.location
}  