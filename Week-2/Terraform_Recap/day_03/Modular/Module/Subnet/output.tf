output "subnet_id" {
    value = {
        for key ,subnet in azurerm_subnet.st-subnet:
        key=> subnet.id
        
        }
  
}