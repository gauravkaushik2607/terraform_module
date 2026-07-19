rg_name = {
  rg1 = {
    rg_name  = "dev-rg"
    location = "centralindia"
  }
}

vnets = {
  vnet1 = {
    vnet_name     = "dev-vnet"
    location      = "centralindia"
    rg_name       = "dev-rg"
    address_space = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    subnet_name      = "frontend-subnet"
    rg_name          = "dev-rg"
    vnet_name        = "dev-vnet"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet2 = {
    subnet_name      = "backend-subnet"
    rg_name          = "dev-rg"
    vnet_name        = "dev-vnet"
    address_prefixes = ["10.0.2.0/24"]
  }
}

pips = {
  pip1 = {
    pip_name          = "frontend-pip"
    rg_name           = "dev-rg"
    location          = "centralindia"
    allocation_method = "Static"
  }

  pip2 = {
    pip_name          = "backend-pip"
    rg_name           = "dev-rg"
    location          = "centralindia"
    allocation_method = "Static"
  }
}

vms = {
  vm1 = {
    nic_name       = "dev-nic1"
    location       = "centralindia"
    rg_name        = "dev-rg"
    nic_ip_name    = "dev-nicip1"
    subnet_name    = "frontend-subnet"
    pip_name       = "frontend-pip"
    vnet_name      = "dev-vnet"
    vm_name        = "frontend-vm"
    vm_size        = "Standard_D2s_v3"
    admin_username = "devopsadmin"
    password       = "Student@123"
    private_allocation = "Dynamic"
  }

  vm2 = {
    nic_name       = "dev-nic2"
    location       = "centralindia"
    rg_name        = "dev-rg"
    nic_ip_name    = "dev-nicip2"
    subnet_name    = "backend-subnet"
    pip_name       = "backend-pip"
    vnet_name      = "dev-vnet"
    vm_name        = "backend-vm"
    vm_size        = "Standard_D2s_v3"
    admin_username = "devopsadmin"
    password       = "Student@123"
    private_allocation = "Dynamic"
  }
}