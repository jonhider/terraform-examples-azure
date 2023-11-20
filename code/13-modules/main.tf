module "11-module-vm" {       
    source = "./module_vm"

    tenant_id       = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    subscription_id = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    client_id       = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    client_secret   = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    
    rgname = var.rgname
    location = var.location
    vnet_name = var.vnet_name
    address_space = var.address_space
    subnet_name = var.subnet_name
    nic_name = var.nic_name
    vm_name = var.vm_name
    vm_size = var.vm_size
    admin_username = var.admin_username
    vm_publisher = var.vm_publisher
    vm_offer = var.vm_offer
    vm_sku = var.vm_sku
    vm_version = var.vm_version
    sku_name = var.sku_name
    keyvault_name = var.keyvault_name
    keyvault_secret_name = var.keyvault_secret_name
    custom_tags = var.custom_tags

}