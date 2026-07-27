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
  subscription_id = "75374faf-ade8-4fae-94e9-ecedf31a697a"
  # Configuration options
}