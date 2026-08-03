rgp = {
  rg1 = {
    rg_name  = "rg-zone"
    location = "eastus"
  }
}

vnetp = {
  vnet = {
    vnet_name           = "Vnet-zone"
    location            = "eastus"
    rg_name = "rg-zone"
  }
}

subnetp = {
  subnet1 = {
    name             = "frontend-subnet"
    vnet_name        = "Vnet-zone"
    rg_name          = "rg-zone"
    address_prefixes = ["10.0.1.0/16"]
  }
  subnet2 = {
    name                = "backend-subnet"
    vnet_name           = "Vnet-zone"
    rg_name = "rg-zone"
    address_prefixes    = ["10.0.2.0/16"]
  }
}

pipp = {
  pip1 = {
  public_ip_name     = "pip-zone"
  rg_name  = "rg-zone"
  location = "eastus"
  }
}

vmp = {
  vm1 = {
    nic_name        = "frontend-vm-nic"
    location        = "eastus"
    rg_name         = "rg-zone"
    subnet_name = "frontend-subnet"
    vnet_name   = "Vnet-zone"
    public_ip_name    = "pip-zone"
    vm_name         = "frontend-vm"
    vm_size         = "Standard_B1s"
    admin_username  = "devopsadmin"
    admin_password  = "DevOps@123"
    image_publisher = "Canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"
    image_version   = "latest"
  }
  vm2 = {
    nic_name        = "backend-vm-nic"
    location        = "eastus"
    rg_name         = "rg-zone"
    subnet_name = "backend-subnet"
    vnet_name   = "Vnet-zone"
    public_ip_name    = "pip-vm"
    vm_name         = "backend-vm"
    vm_size         = "Standard_B1s"
    admin_username  = "devopsadmin"
    admin_password  = "DevOps@123"
    image_publisher = "Canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"
    image_version   = "latest"
  }
}