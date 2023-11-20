terraform {
  required_version = ">=1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
  }

  backend "azurerm" {
    storage_account_name = "11-module-stg"
    container_name = "11-module-container"
    #key = "terraform.tfstate"
    #access_key = "KRqtJIA0Gp4oKBsElDU7RGN"
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}
