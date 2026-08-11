module "st-rg" {
  source          = "../../Module/Resource_Group"
  resource_groups = var.resource_groups
}

module "Virtual_Network" {
  depends_on = [module.st-rg]
  source     = "../../Module/Virtual_Network"
  vnets      = var.vnets


}
module "subnets" {
  depends_on = [module.st-rg, module.Virtual_Network]
  source     = "../../Module/Subnet"
  subnets    = var.subnets


}
module "pips" {
  depends_on = [module.st-rg]
  source     = "../../Module/Public_IP"
  pips       = var.pips


}
module "nics" {
  depends_on    = [module.st-rg, module.pips, module.subnets]
  source        = "../../Module/NIC"
  nics          = var.nics
  subnet_ids    = module.subnets.subnet_id
  public_ip_ids = module.pips.public_ip_address_ids




}
module "vms" {
  depends_on            = [module.st-rg, module.nics]
  source                = "../../Module/Virtual_Machine"
  vms                   = var.vms
  network_interface_ids = module.nics.network_interface_ids

}