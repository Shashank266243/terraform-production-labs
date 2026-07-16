resource "azurerm_resource_group" "st-module-rg" {
  for_each = var.rgs 
  name     = local.rg_name
  location = each.value.location
}