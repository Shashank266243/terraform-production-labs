resource "azurerm_storage_account" "module-st-SA" {
  
  for_each = var.stgs
  name                     = local.sa_name
  resource_group_name      = "ims-dev-rg-001"
  location                 = each.value.location
  account_tier             = each.value.account_tier 
  account_replication_type = each.value.account_replication_type
}