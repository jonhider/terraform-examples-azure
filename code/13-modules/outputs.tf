output "vm_private_ip" {
    value = module.11-module-vm.terraform.nic
}

output "vm_name" {
  value = module.11-module-vm.vm_name
}

output "vm_id" {
  value = module.11-module-vm.vm_id
}