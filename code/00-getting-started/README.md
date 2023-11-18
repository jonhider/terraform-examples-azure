## Getting Started
The following information is the basic building blocks of all Terraform functionality.  Generally speaking, every object created by Terraform includes a provider, variables, output, and data.  Below is the basic information about these basic components.

## Terraform Providers
A ```provider``` is an executable plugin that is download from the Hashicorp registry at the implementation of the ```terraform init``` command.  The provider block defines the version of the plugin and passes intilialization arguements to the provider, such as authentication or project details.  
<br /><br />
Depending on the provider, a set of resource types is available from each provider plugin and helps define what arguments a resource can accept and attributes that can be exported as output values
<br /><br />
[Terraform Registry](https://registry.terraform.io) is the main directory of publically available Terraform providers.  The registry hosts providers for most major infrastructure platforms.
<br /><br />
Providers are defined within any file ending ```.tf``` or ```.tf.json``` and a best practice is define the provider block within a ```providers.tf``` file.
<br /><br />
<b>AzureRM Terraform Provider</b><br />
```
    # Azure Provider source and version being used

terraform {

  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.54.0"
    }
  }
}

# Configure the Microsoft Azure Provider

provider "azurerm" {
  features {}

  subscription_id    = "...."
  client_id          = "...."
  client_secret      = "...."
  tenant_id          = "...."
} 
```

## Terraform Variables


## Terraform Output


## Terraform Data