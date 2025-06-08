terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.37.1"
    }
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}