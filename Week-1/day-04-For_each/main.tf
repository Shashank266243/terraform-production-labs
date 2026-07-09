# resource "azurerm_resource_group" "rgs" {
#   for_each = toset(var.rg_name)
#   location = var.location
#   name     = each.value
# }

resource "azurerm_resource_group" "rgs" {
  for_each = var.rgs
  location = each.value.location
  name     = each.value.name
}

