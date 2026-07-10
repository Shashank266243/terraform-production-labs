module "Resouce_group" {
  source = "../../Module/Resouce_group"
  rgs    = var.rgs


}
module "Storage_account" {
  source = "../../Module/Storage_Account"
  stgs   = var.stgs
}