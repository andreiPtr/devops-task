resource "azurerm_container_registry" "bcloudcr" {
  name                = "bcloudRegistry"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Standard"

  tags = {
    homeAssignment = "yes"
  }
}