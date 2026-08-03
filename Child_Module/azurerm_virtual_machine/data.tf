data "azurerm_subnet" "subnetblock" {
  for_each             = var.vmc
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg_name
}

data "azurerm_public_ip" "pipblock" {
  for_each            = var.vmc
  name                = each.value.public_ip_name
  resource_group_name = each.value.rg_name
}