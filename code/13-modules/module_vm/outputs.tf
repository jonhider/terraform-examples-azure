output "vm_id" {
  description = "ID of VM"
  value = azurerm_windows_virtual_machine.virtual_machine.id
}

output "vm_name" {
  description = "VM name"
  value = azurerm_windows_virtual_machine.virtual_machine.name
}

output "nic" {
  description = "VM network interface card"
  value = azurerm_network_interface.nic.private_ip_address
}