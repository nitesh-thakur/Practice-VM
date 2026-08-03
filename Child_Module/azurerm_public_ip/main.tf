variable "pipc"{
 // type = map(object())
}
resource "azurerm_public_ip" "pipblock" {
  for_each = var.pipc
  name                = each.value.public_ip_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  allocation_method   = "Static"
}