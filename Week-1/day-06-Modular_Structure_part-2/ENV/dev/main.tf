module "Resouce_group" {
  source       = "../../Module/Resouce_group"
  rgs          = var.rgs
  Enviroment   = var.Enviroment
  Project      = var.Project
  Owner        = var.Owner
  BusinessUnit = var.BusinessUnit
  CostCenter   = var.CostCenter


}
module "Storage_account" {
  source       = "../../Module/Storage_Account"
  stgs         = var.stgs
  Enviroment   = var.Enviroment
  Project      = var.Project
  Owner        = var.Owner
  BusinessUnit = var.BusinessUnit
  CostCenter   = var.CostCenter
 
}