resource "azurerm_virtual_network" "st-vnet" {
  depends_on          = [azurerm_resource_group.st-rg]
  name                = "st-vnet"
  location            = "centralindia"
  resource_group_name = "rg-1"
  address_space       = ["10.0.0.0/24"]
}