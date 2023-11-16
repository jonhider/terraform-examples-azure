terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    version = ">=3.0"
    }    
  }  
}

provider "azurerm" {
  features {}
  tenant_id       = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  subscription_id = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  client_id       = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  client_secret   = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

resource "azurerm_resource_group" "azure_example" {
  name     = "01-resource-group"
  location = "centralus"
}