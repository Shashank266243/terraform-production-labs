# # output "resource_group_id" {
# #   description = "ID of the Azure Resource Group"
# #   value       = azurerm_resource_group.st-module-rg.id
# # }
output "resource_group_names" {
  value = azurerm_resource_group.st-module-rg
}