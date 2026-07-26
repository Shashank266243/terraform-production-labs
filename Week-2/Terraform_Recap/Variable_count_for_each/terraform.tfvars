resource_groups = {
  rg1 = {
    name     = "st-rg11"
    location = "centralindia"
  }
}

vnets = {
  vnet1 = {
    name    = "st-vnet11"
    address = ["10.0.0.0/24"]
    rg_key  = "rg1"

  }
}

subnets = {
  subnet1 = {
    name             = "st-subnet11"
    address_prefixes = ["10.0.0.0/28"]
    rg_key           = "rg1"
    vnet_key         = "vnet1"

  }
}

pips = {
  pip1 = {
    name   = "st-pip11"
    rg_key = "rg1"

  }

}
nics = {
  nic1 = {
    name       = "st-nic11"
    rg_key     = "rg1"
    pip_key    = "pip1"
    subnet_key = "subnet1"
  }

}
vms = {
  vm1 = {
    name           = "st-vm-linux11"
    admin_username = "linuxadmin"
    admin_password = "admin@123"
    rg_key         = "rg1"
    nic_key        = "nic1"


  }
}

