variable "vnetc" {
    type = map(any)
}

resource "azurerm_virtual_network" "vnetblock" {
    for_each = var.vnetc
    name = each.value.vnet_name
    location = each.value.location
    resource_group_name = each.value.rg_name
    address_space = ["10.0.0.0/16"]
}