## Example: Terraform "Resource Group"

<p>This folder contains the example files needed to create a resource group in an Azure subscription.

## Requirements
* [Azure subscription](https://portal.azure.com)
* [Terraform version](https://www.terraform.io/): 1.6.0 or later
* [Terraform Azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest) provider, which interacts with the Azure resource manager via APIs

## Terraform Workflow
1. Initialize<br />Initilizes the working directory containing the Terraform configuration files, as well as download the AzureRM provider, which is notd in the ```providers.tf``` file
Command

    ```terraform init```

2. Validate<br />Command: ```terraform validate``` - validates and verifies the syntax of the configuration files.  Implicitely done in the ```terraform plan``` stage<br /><br />
3. Plan<br />Command: ```terraform plan``` - Create the executation plan<br /><br />
4. Apply<br />Command: ```terraform apply``` - initiates the configuration changes to the Azure infrastructure and updates the tfstate.tf file<br /><br />
5. Destroy<br />Command: ```terraform destroy``` - not part of the actual Terraform workflow, but reviews the configurations set in the ```terraform plan``` stage and destroys the infrastructure objects in the plan.  Typically used for clean up purposes.


 ```terraform init```