# - CONNECTION TO AZURE SUBSCRIPTION -#
variable "subscription_id" {
  type        = string
  description = "Subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID"
}

variable "client_id" {
  type        = string
  description = "Client ID"
}

variable "client_secret" {
  type        = string
  description = "Client Secret"
}

# - VARIABLES FOR AZURE VM CREATION -#
variable "rgname" {
  type = string
  description = "Resource group name"
}

variable "location" {
  type = string
  description = "Name of location"
}

variable "vnet_name" {
  type = string
  description = "Name of vNet"
}

variable "address_space" {
  type = list(string)
  description = "vNet address space"
  default = [ "10.1.0.0/16" ]
}

variable "subnet_name" {
  type = string
  description = "vNet subnet name"
}

variable "nic_name" {
  type = string
  description = "VM nic name"
}

variable "vm_name" {
  type = string
  description = "VM Name"
}

variable "vm_size" {
  type = string
  description = "VM Name"
}

variable "admin_username" {
  type = string
  description = "username"
  default = "azureuser"
}

variable "vm_publisher" {
  type = string
  description = "VM Publisher"
}

variable "vm_offer" {
  type = string
  description = "VM offer"
}

variable "vm_sku" {
  type = string
  description = "value"
}

variable "vm_version" {
  type = string
  description = "value"
}

variable "sku_name" {
  type = string
  description = "VM sku name"
}

variable "keyvault_name" {
  type = string
  description = "keyvault name"
}

variable "keyvault_secret_name" {
  type = string
  description = "VM secret name"
  default = "vmpassword"
}

variable "custom_tags" {
  type = string
  description = "Tags"
}