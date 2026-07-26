resource "azurerm_subnet" "st-subnet" {
  depends_on           = [azurerm_resource_group.st-rg, azurerm_virtual_network.st-vnet]
  for_each             = var.subnets
  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.st-rg[each.value.rg_key].name
  virtual_network_name = azurerm_virtual_network.st-vnet[each.value.vnet_key].name
  address_prefixes     = each.value.address_prefixes

}
