resource "azurerm_kubernetes_cluster" "bcloudkubernetes" {
  name                = "bcloud-aks"
  resource_group_name = var.resource_group_name
  location            = var.location
  dns_prefix          = "bcloud-dns"
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    homeAssignment = "yes"
  }
}
