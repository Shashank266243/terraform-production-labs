

resource "azurerm_network_interface" "st-nic" {
  for_each            = var.nics
  name                = each.value.name
  location            = azurerm_resource_group.st-rg[each.value.rg_key].location
  resource_group_name = azurerm_resource_group.st-rg[each.value.rg_key].name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.st-subnet[each.value.subnet_key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.st-pip[each.value.pip_key].id

  }
}

resource "azurerm_linux_virtual_machine" "st-linux-vm" {
  depends_on          = [azurerm_resource_group.st-rg, azurerm_virtual_network.st-vnet, azurerm_subnet.st-subnet, azurerm_public_ip.st-pip, azurerm_network_interface.st-nic]
  for_each            = var.vms
  name                = each.value.name
  resource_group_name = azurerm_resource_group.st-rg[each.value.rg_key].name
  location            = azurerm_resource_group.st-rg[each.value.rg_key].location
  size                = "Standard_B1s"
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password


  network_interface_ids = [
    azurerm_network_interface.st-nic[each.value.nic_key].id
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