output "resource_group_name" {
  value = var.resource_group_name
}

output "container_registry_name" {
  value = azurerm_container_registry.bcloudcr.name
}

output "container_registry_login_server" {
  value = azurerm_container_registry.bcloudcr.login_server
}

output "storage_account_name" {
  value = azurerm_storage_account.bcloudsa.name
}

output "storage_container_name" {
  value = azurerm_storage_container.bcloudcontainer.name
}