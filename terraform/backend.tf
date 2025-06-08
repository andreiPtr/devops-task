terraform {
  backend "azurerm" {
    resource_group_name   = "Andrei-Petre-Candidate"
    storage_account_name  = "bcloudstorageaccount"
    container_name        = "bcloud-tfstate"
    key                   = "terraform.tfstate"
  }
}
