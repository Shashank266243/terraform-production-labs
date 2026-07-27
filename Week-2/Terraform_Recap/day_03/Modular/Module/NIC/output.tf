output "network_interface_ids" {
    value = {
        for key , nic in azurerm_network_interface.st-nic:
        key=> nic.id
    }
  
}