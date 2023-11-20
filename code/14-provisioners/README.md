## Example: Terraform "Resource Group"

This folder contains the example files explaining details about ```terraform provisioners```.

## Requirements
* [Azure subscription](https://portal.azure.com)
* [Terraform Install](https://developer.hashicorp.com/terraform/install?ajs_aid=fe9a4574-f8ea-4afc-8a23-e1b555adc5a7&product_intent=terraform)
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
5. Destroy - Reviews the configurations set in the ```terraform plan``` stage and destroys the infrastructure objects in the plan.  Typically used for clean up purposes and not part of workflow

```
    terraform destroy
```