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
    resource_group_name = "st-rg11"
    location="centralindia"
    

  }
}

subnets = {
  subnet1 = {
    name             = "st-subnet11"
    address_prefixes = ["10.0.0.0/28"]
    resource_group_name           = "st-rg11"
    virtual_network_name  = "st-vnet11"

  }
}

pips = {
  pip1 = {
    name   = "st-pip11"
   resource_group_name = "st-rg11"
    location="centralindia"

  }

}
nics = {
  nic1 = {
    name       = "st-nic11"
    resource_group_name = "st-rg11"
    location="centralindia"
    subnet_key = "subnet1"
    pip_key    = "pip1"
    
    
  }

}
vms = {
  vm1 = {
    name           = "st-vm-linux11"
    admin_username = "linuxadmin"
    admin_password = "admin@123"
    resource_group_name = "st-rg11"
    location="centralindia"
    nic_key="nic1"


  }

}

