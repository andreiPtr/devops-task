resource "azurerm_storage_account" "bcloudsa" {
  name                     = "bcloudstorageaccount"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    homeAssignment = "yes"
  }
}

resource "azurerm_storage_container" "bcloudcontainer" {
  name                  = "bcloud-tfstate"
  storage_account_id    = azurerm_storage_account.bcloudsa.id
  container_access_type = "private"
}