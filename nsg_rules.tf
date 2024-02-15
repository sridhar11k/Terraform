resource "azurerm_network_security_rule" "appserver-tule-tcp80" {
  name  = "appserver-rule-tcp80"
  priority  = 100
  direction  =  "Inbound"
  access  = "Allow"
  protocol = "Tcp"
  source_port_range  = "*"
  destination_port_range = "80"
  source_address_prefix  = "*"
  destination_address_prefix  = "172.16.0.0/16"
  resource_group_name  = azurerm_resource_group.RG1.name
  network_security_group_name  = azurerm_network_security_group.terra_nsg1.name
}

resource "azurerm_network_security_rule" "webserver-tule-tcp80" {
  name  = "webserver-rule-tcp80"
  priority  = 101
  direction  =  "Inbound"
  access  = "Allow"
  protocol = "Tcp"
  source_port_range  = "*"
  destination_port_range = "443"
  source_address_prefix  = "*"
  destination_address_prefix  = "172.16.0.0/16"
  resource_group_name  = azurerm_resource_group.RG1.name
  network_security_group_name  = azurerm_network_security_group.terra_nsg1.name
}

resource "azurerm_network_security_rule" "ssh-tcp22" {
  name  = "ssh-rule-tcp22"
  priority  = 102
  direction  =  "Inbound"
  access  = "Allow"
  protocol = "Tcp"
  source_port_range  = "*"
  destination_port_range = "22"
  source_address_prefix  = "*"
  destination_address_prefix  = "172.16.0.0/16"
  resource_group_name  = azurerm_resource_group.RG1.name
  network_security_group_name  = azurerm_network_security_group.terra_nsg1.name
}