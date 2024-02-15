resource "azurerm_resource_group" "RG1" {
  name     = var.rg_name
  location = var.loc_name
}