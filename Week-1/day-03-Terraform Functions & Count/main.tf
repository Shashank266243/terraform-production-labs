resource "azurerm_resource_group" "rgs" {
  count    = var.rg_count
  name     = "${var.rg_name}-${count.index}"
  location = "centralindia"
}