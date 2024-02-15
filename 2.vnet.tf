resource "azurerm_virtual_network" "tnet1" {
  name                = "${azurerm_resource_group.RG1.name}-vNET1"
  location            = azurerm_resource_group.RG1.location
  resource_group_name = azurerm_resource_group.RG1.name
  address_space       = var.vnet1_cidr1
}


resource "azurerm_virtual_network" "tnet2" {
  name                = "${azurerm_resource_group.RG1.name}-vNET2"
  location            = "westus"
  resource_group_name = azurerm_resource_group.RG1.name
  address_space       = var.vnet2_cidr1
}  