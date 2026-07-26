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
  source               = "../../Module/Storage_Account"
  resource_group_names = module.Resouce_group.resource_group_names
  stgs                 = var.stgs
  Enviroment           = var.Enviroment
  Project              = var.Project
  Owner                = var.Owner
  BusinessUnit         = var.BusinessUnit
  CostCenter           = var.CostCenter

}