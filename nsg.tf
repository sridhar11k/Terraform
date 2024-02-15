resource azurerm_network_security_group "terra_nsg1" {
    name                = "TerraNSG1"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name

}
