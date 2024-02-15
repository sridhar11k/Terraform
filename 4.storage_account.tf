resource "azurerm_storage_account" "terra_files" {
  name                     = "sk521hstore"
  resource_group_name      = azurerm_resource_group.RG1.name
  location                 = azurerm_resource_group.RG1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
   environment = var.env
 }
}
resource "azurerm_storage_container" "appfiles" {
    count = 3 # 1 2 3
    name        = "app0${count.index+1}"
    storage_account_name =  azurerm_storage_account.terra_files.name
    container_access_type = "private"
}