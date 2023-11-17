## Example: Terraform "Resource Group"

<p>This folder contains the example files needed to create a resource group in an Azure subscription.

## Requirements
<ul>
    <li>Azure subscription</li>
    <li>Terraform version: 1.6.0 or later</li>
    <li>Uses the Terraform Azurerm provider, which interacts with the Azure resource manager via APIs</li>
</ul>

## Terraform Workflow
* Terraform init - Initialize the configuration
* terraform validate - Validate the configuration
* terraform plan - Create the executation plan
* terraform apply - Apply configuration changes to infrastructure
* terraform destroy - Remove or clean up resources