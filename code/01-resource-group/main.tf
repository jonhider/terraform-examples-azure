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
  #tenant_id       = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  #subscription_id = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  #client_id       = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  #client_secret   = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

  tenant_id       = "2b90946f-9fa5-4050-9bd4-e6d1de88448d"
  subscription_id = "c35c1dec-cd1c-4cd7-825c-257faf03bfc2"
  client_id       = "a7cd126b-f146-4a28-a6de-aae1c9ed5c36"
  client_secret   = "Tvl8Q~s84WpVqjf8tpXVnZnGe6pcunwiUEPbbde1"  
}

resource "azurerm_resource_group" "azure_example" {
  name     = "01-resource-group"
  location = "centralus"
}