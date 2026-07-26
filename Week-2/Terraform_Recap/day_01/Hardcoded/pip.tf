resource "azurerm_public_ip" "st-pip" {
    depends_on = [ azurerm_resource_group.st-rg ]
  name                = "st-pip"
  resource_group_name = "rg-1"
  location            = "centralindia"
  allocation_method   = "Static"

}