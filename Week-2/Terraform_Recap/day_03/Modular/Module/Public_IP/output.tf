output "public_ip_address_ids" {
    value = {
        for key , pip in azurerm_public_ip.st-pip:
        key => pip.id
  
}
}