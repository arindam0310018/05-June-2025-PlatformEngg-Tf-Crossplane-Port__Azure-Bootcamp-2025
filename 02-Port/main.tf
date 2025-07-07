terraform {
  backend "azurerm" {
    resource_group_name   = "AM-Admin-RG"
    storage_account_name  = "amtfstatesa"
    container_name        = "terraform"
    key                   = "am-rg.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
}
