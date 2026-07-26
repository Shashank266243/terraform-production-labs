resource "azurerm_virtual_network" "st-vnet" {
  depends_on          = [azurerm_resource_group.st-rg]
  for_each            = var.vnets
  name                = each.value.name
  location            = azurerm_resource_group.st-rg[each.value.rg_key].location
  resource_group_name = azurerm_resource_group.st-rg[each.value.rg_key].name
  address_space       = each.value.address
}