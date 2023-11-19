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

variable "rg_name" {
  type        = string
  description = "Name of resource group"
}

variable "rg_location" {
  type        = string
  description = "Name of location"
}

variable "stg_name" {
  type        = string
  description = "Name of storage account"
}

variable "tags" {
  description = "Tag"
}