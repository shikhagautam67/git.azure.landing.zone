terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
 backend "azurerm" {
    resource_group_name = "rg-lilly"
    storage_account_name = "storageaccountnamelilly"
    container_name       = "tfstate"                               
    key                  = "subnet.terraform.tfstate"                
      }
  }

provider "azurerm" {
  features {}
}