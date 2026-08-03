
module "resource_group" {
  source = "../../Child_Module/azurerm_resource_group"
  rgc    = var.rgp
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../Child_Module/azurerm_virtual_network"
  vnetc      = var.vnetp
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../Child_Module/azurerm_subnet"
  subnetc    = var.subnetp
}

module "pip" {
  depends_on = [module.resource_group]
  source     = "../../Child_Module/azurerm_public_ip"
  pipc       = var.pipp
}

module "vmp" {
  depends_on = [module.subnet, module.pip]
  source     = "../../Child_Module/azurerm_virtual_machine"
  vmc        = var.vmp
}