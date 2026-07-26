resource "azurerm_storage_account" "module-st-SA" {
  
  for_each = var.stgs
  name                     = each.value.name
  resource_group_name      = var.resource_group_names[each.key]
  location                 = each.value.location
  account_tier             = each.value.account_tier 
  account_replication_type = each.value.account_replication_type
}