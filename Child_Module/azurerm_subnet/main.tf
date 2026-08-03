variable "subnetc" {
  type = map(any)
}
resource "azurerm_subnet" "subnetblock" {
  for_each             = var.subnetc
  name                 = each.value.name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.address_prefixes
}