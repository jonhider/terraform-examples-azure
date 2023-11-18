## Getting Started
The following information is the basic building blocks of all Terraform functionality.  Generally speaking, every object created by Terraform includes a provider, variables, output, and data.  Below is the basic information about these basic components.

## Terraform Providers
A ```provider``` is an executable plugin that is download from the Hashicorp registry at the implementation of the ```terraform init``` command.  The provider block defines the version of the plugin and passes intilialization arguements to the provider, such as authentication or project details.  
<br /><br />
Depending on the provider, a set of resource types is available from each provider plugin and helps define what arguments a resource can accept and attributes that can be exported as output values
<br /><br />
[Terraform Registry](https://registry.terraform.io) is the main directory of publically available Terraform providers and the registry hosts providers for most major infrastructure platforms.
<br /><br />
Providers are defined within any file ending ```.tf``` or ```.tf.json``` and a best practice is define the provider block within a ```providers.tf``` file.
<br /><br />
<b>Example: AzureRM Terraform Provider</b> [Terraform: AzureRM Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest)

```
*Azure Provider source and version being used*
terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.54.0"
    }
  }
}

*Configure the Microsoft Azure Provider*
provider "azurerm" {
  features {}

  subscription_id    = "...."
  client_id          = "...."
  client_secret      = "...."
  tenant_id          = "...."
} 
```

## Terraform Resources
Resources are the most important code blocks within Terraform.  By defining a resource block within a configuration file, you're instructing Terraform on which infrastructure objects you're wanting to create, delete, update, or destroy.
<br /><br />
Resource blocks start with the provider name at the beginning
```
resource "azurerm_resource_group" "example" {
  name     = "test-resources"
  location = "CentralUS"
}

resource "azurerm_resource_group" "azure-pip" {
    name                    = "test-pip"
    location                = azurerm_resource_group.example.location
    resource_group_name     = azurerm_resource_group.example.name
    allocation_method       = "Dynamic"
    idle_timeout_in_minutes = 30

    tags = {
        environment = "test"
    }
}
```


## Terraform Variables
Terraform variables are defined input values to execute your configuration code.<br /></br />
The syntax is <argument_name> = var.<variable_name><br /><br />
After the variable is defined, it needs to be declared and can be declared in any file ending ```.tf``` and generally put in ```main.tf```

```
resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.rglocation
}

resource "azurerm_resource_group" "azure-pip" {
    name                    = var.public_ip_name
    location                = azurerm_resource_group.example.location
    resource_group_name     = azurerm_resource_group.example.name
    allocation_method       = var.allocation_method
    idle_timeout_in_minutes = var.idle_timeout_in_minutes

    tags = {
        environment = "test"
    }
}
```
```
variable "rgname" {
    type = string
    description = "Name of resource group"
    default = "example-rg"
}

variable "rglocation" {
    type = string
    description = "Resource group location"
    default = "CentralUS"
}

variable "public_ip_name" {
    type = string
    description = "Name of public ip address"
    default = "azure-pip"
}

variable "allocation_method" {
    type = string
    description = "Defines allocation method for IP address. Values: 'static' or 'dyanamic'"
    default = "dynamic"
}

variable "idle_timeout_in_minutes" {
    type = number
    description = "Provide idle timeout in minutes"
    default = 30
}

variable "tags" {
    type = map(any)
    description = "Mapof tags assigned to the resource.  Values are 'key = value' paisr"
    default = {
        enviorment  = "Test"
        owner       = "azure-terraform"
    }
}
```

## Terraform Output
Output values are return values of a Terraform resource, module, or data and can help expose information you might be looking for 
<br /><br />
Use Cases:
* Output from one resource/module/data can be called into other resources/modules/data if there is a dependency
* Can print output of the resources/module/data on the CLI by running the ```terraform apply``` commands
* If using remote state, other configurations via ```terraform_remote_state``` data source an help access root module outputs

```
resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.rglocation
}

resource "azurerm_resource_group" "azure-pip" {
    name                    = var.public_ip_name
    location                = azurerm_resource_group.example.location
    resource_group_name     = azurerm_resource_group.example.name
    allocation_method       = var.allocation_method
    idle_timeout_in_minutes = var.idle_timeout_in_minutes

    tags = {
        environment = "test"
    }
}
```

```
output "id" {
    value = azurerm_public_ip.example.id
}

output "name" {
    value = azurerm_public_ip.example.name 
}

output "resource_group_name" {
    value = azurerm_public_ip.example.resource_group_name
}

output "ip_address" {
    value = azurerm_public_ip.example.ip_address
}

output "fqdn" {
    value = azurerm_public_ip.example.fqdn
}
```
## Terraform Data
Terraform data sources allow extract of output or information from already existing resources that were provisioned by other Terraform configurations and/or by manual configuration.
```
data "azure_virtual_network" "example" {
    name                = "production-vnet"
    resource_group_name = "rg-terraform"
}

output "virtual_network_id" {
    value = data.azure_virtual_network.example.id
}
```
Example: creating a subnet from an existing virtual network
```
data "azure_resource_group" "example" {
    name    = "rg-terraform"
}

data "azurerm_virtual_network" "example" {
    name                = "production-vnet"
    resource_group_name = data.azure_resource_group.example.name
}

resource "azurerm_subnet" "example" {
    name                = "terraform-subnet"
    resource_group_name = data.azure_resource_group.example.name
    virtual_network     = data.azurerm_virtual_network.example.name
    address_prefixes    = ["10.0.1.0/24"]
}
```