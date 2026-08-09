terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c0fefeb2-eca9-4c42-a650-6e08b544f0a8"
  # Configuration options
}