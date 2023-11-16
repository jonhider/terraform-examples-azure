output "rg_name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.rg_terraform.name
}

output "rg_location" {
  description = "Resource Group Location"
  value       = azurerm_resource_group.rg_terraform.location
}
