resource "azurerm_resource_group" "rg_terraform" {
  name     = var.rg_name
  location = var.rg_location
}

resource "azurerm_storage_account" "terraform-stg" {
  name                     = var.stg_name
  resource_group_name      = azurerm_resource_group.rg_terraform.name
  location                 = azurerm_resource_group.rg_terraform.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}