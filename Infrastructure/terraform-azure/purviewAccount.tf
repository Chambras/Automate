# Create a Azure Purview Account
/*resource "azurerm_purview_account" "purviewAccount" {
  name                = "${var.suffix}${var.purviewAccountName}"
  resource_group_name = azurerm_resource_group.genericRG.name
  location            = azurerm_resource_group.genericRG.location

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}*/
