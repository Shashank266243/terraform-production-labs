resource "azurerm_public_ip" "st-pip" {
  depends_on          = [azurerm_resource_group.st-rg]
  for_each            = var.pips
  name                = each.value.name
  resource_group_name = azurerm_resource_group.st-rg[each.value.rg_key].name
  location            = azurerm_resource_group.st-rg[each.value.rg_key].location
  allocation_method   = "Static"

}
