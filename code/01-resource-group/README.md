## Example: Terraform "Resource Group"

<p>This folder contains the example files needed to create a resource group in an Azure subscription.

## Requirements
<ul>
    <li>Azure subscription</li>
    <li>Terraform version: 1.6.0 or later</li>
    <li>Uses the Terraform Azurerm provider, which interacts with the Azure resource manager via APIs</li>
</ul>

## Terraform Workflow
* Initialize<br />Command: ```terraform init``` - initilizes the working directory containing the Terraform configuration files, as well as download the AzureRM provider, which is notd in the ```providers.tf``` file<br /><br />
* Validate<br />Command: ```terraform validate``` - validates and verifies the syntax of the configuration files.  Implicitely done in the ```terraform plan``` stage<br /><br />
* Plan<br />Command: ```terraform plan``` - Create the executation plan<br /><br />
* Apply<br />Command: ```terraform apply``` - initiates the configuration changes to the Azure infrastructure and updates the tfstate.tf file<br /><br />
* Destroy<br />Command: ```terraform destroy``` - not part of the actual Terraform workflow, but reviews the configurations set in the ```terraform plan``` stage and destroys the infrastructure objects in the plan.  Typically used for clean up purposes.