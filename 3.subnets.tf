resource "azurerm_subnet" "webserver" {
    name     = "terra-webserver"
    resource_group_name = azurerm_resource_group.RG1.name
    virtual_network_name = azurerm_virtual_network.tnet1.name
    address_prefixes = [var.prefix_subnet1]
}
resource "azurerm_subnet" "appserver" {
    name     = "terra-appserver"
    resource_group_name = azurerm_resource_group.RG1.name
    virtual_network_name = azurerm_virtual_network.tnet1.name
    address_prefixes = [var.prefix_subnet2]
}
resource "azurerm_subnet" "dbserver" {
    name     = "terra-dbserver"
    resource_group_name = azurerm_resource_group.RG1.name
    virtual_network_name = azurerm_virtual_network.tnet2.name
    address_prefixes = [var.prefix_subnet3]
}