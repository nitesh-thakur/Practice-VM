variable "rgc" {
    type = map(any)
}

resource "azurerm_resource_group" "rgblock" {
    for_each = var.rgc
    name = each.value.rg_name
    location = each.value.location
}