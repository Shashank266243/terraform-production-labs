module "Resource_Group" {
  source   = "../../Module/Resource_Group"
  name     = var.name
  location = var.location

}

module "VNet" {
  depends_on           = [module.Resource_Group]
  source               = "../../Module/VNet"
  virtual_network_name = var.virtual_network_name
  location             = var.location
  resource_group_name  = var.name
  vnet_address_space   = var.vnet_address_space

}

module "Subnet" {
  depends_on              = [module.Resource_Group, module.VNet]
  source                  = "../../Module/Subnet"
  subnet_name             = var.subnet_name
  resource_group_name     = var.name
  virtual_network_name    = var.virtual_network_name
  subnet_address_prefixes = var.subnet_address_prefixes

}