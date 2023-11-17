## Example: Terraform "Resource Group"

<p>This folder contains the example files needed to create a resource group in an Azure subscription.

## Requirements
* [Azure subscription](https://portal.azure.com)
* [Terraform version](https://www.terraform.io/): 1.6.0 or later
* [Terraform Azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest) provider, which interacts with the Azure resource manager via APIs

## Terraform Workflow
1. Initialize - Initilizes the working directory containing the Terraform configuration files, as well as download the AzureRM provider, which is notd in the ```providers.tf``` file
```
    terraform init
```

2. Validate - Verifies the syntax of the configuration files.  Implicitely done in the ```terraform plan``` stage
```
    terraform validate
```
3. Plan - Create the executation plan
```
    terraform plan
```
4. Apply - Initiates the configuration changes to the Azure infrastructure and updates the tfstate.tf file
```
    terraform apply
```
5. Destroy - Reviews the configurations set in the ```terraform plan``` stage and destroys the infrastructure objects in the plan.  Typically used for clean up purposes and not Terraform workflow

```
    terraform destroy
```