
resource "azurerm_virtual_network" "st-vnet" {
 
  name                = var.virtual_network_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
 
  
}