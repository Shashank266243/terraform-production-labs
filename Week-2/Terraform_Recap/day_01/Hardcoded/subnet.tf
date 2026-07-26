resource "azurerm_subnet" "st-subnet" {
    depends_on = [ azurerm_resource_group.st-rg,azurerm_virtual_network.st-vnet ]
  name                 = "st-subnet"
  resource_group_name  = "rg-1"
  virtual_network_name = "st-vnet"
  address_prefixes     = ["10.0.0.0/28"]

}