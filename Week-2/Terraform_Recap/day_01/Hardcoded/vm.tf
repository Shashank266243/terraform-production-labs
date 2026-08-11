

resource "azurerm_network_interface" "st-nic" {
  name                = "st-nic"
  location            = azurerm_resource_group.st-rg.location
  resource_group_name = azurerm_resource_group.st-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = "/subscriptions/75374faf-ade8-4fae-94e9-ecedf31a697a/resourceGroups/rg-1/providers/Microsoft.Network/virtualNetworks/st-vnet/subnets/st-subnet"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "/subscriptions/75374faf-ade8-4fae-94e9-ecedf31a697a/resourceGroups/rg-1/providers/Microsoft.Network/publicIPAddresses/st-pip"

  }
}

resource "azurerm_linux_virtual_machine" "st-linux-vm" {
  depends_on          = [azurerm_resource_group.st-rg, azurerm_virtual_network.st-vnet, azurerm_subnet.st-subnet, azurerm_public_ip.st-pip, azurerm_network_interface.st-nic]
  name                = "st-linux-vm"
  resource_group_name = azurerm_resource_group.st-rg.name
  location            = azurerm_resource_group.st-rg.location
  size                = "Standard_B1s"
  admin_username      = "adminuser"
  admin_password      = "admin@123"

  network_interface_ids = [
    azurerm_network_interface.st-nic.id
  ]
  disable_password_authentication = false


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}