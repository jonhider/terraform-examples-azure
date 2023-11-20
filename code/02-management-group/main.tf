data "azurerm_subscription" "current" {}

resource "azurerm_management_group" "parent" {
  name = "parent_group"
}

resource "azurerm_management_group" "child" {
  name = "child_group"
  parent_management_group_id = azurerm_management_group.parent.id
}