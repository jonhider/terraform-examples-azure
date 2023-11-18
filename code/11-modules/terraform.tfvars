rgname = "11-module-rg"
location = "centralus"
custom_tags = {
    environment = "production"
    owner = "azure-terraform"
}

vm_name = "11-module-vm"
vm_size = "Standard_F2"
vm_publisher = "MicrosoftWindowsServer"
vm_offer = "WindowsServer"
vm_sku = "2016-Datacenter"
vm_version = "latest"
sku_name = "premium"
vnet_name = "11-module-vnet"
address_space = [ "10.1.0.0/16" ]
subnet_name = "11-module-subnet"
nic_name = "11-module-nic"

keyvault_name = "11-module-vm-keyvault"
keyvault_secret_name = "11-module-vm-password"