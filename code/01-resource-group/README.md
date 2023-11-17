## Example: Terraform "Resource Group"

<p>This folder contains the example files needed to create a resource group in an Azure subscription.

## Requirements
<ul>
    <li>Azure subscription</li>
    <li>Terraform version: 1.6.0 or later</li>
    <li>Uses the Terraform Azurerm provider, which interacts with the Azure resource manager via APIs</li>
</ul>

## Terraform Workflow
* Initialize the configuration<br />Command: ```terraform init``` - initilizes the working directory containing the Terraform configuration files, as well as download the AzureRM provider, which is notd in the ```providers.tf``` file<br /><br />
* Validate the configuration"<br />Command: ```terraform validate``` - validates and verifies the syntax of the configuration files.  Implicitely done in the ```terraform plan``` stage
* terraform plan - Create the executation plan<br />Command: ```terraform apply``` initiates the configuration changes to the Azure infrastructure.<br /><br />
* terraform apply - Apply configuration changes to infrastructure<br />Command: ```terraform apply``` initiates the configuration changes to the Azure infrastructure and updates the tfstate.tf file<br /><br />
* terraform destroy - Remove or clean up resources<br />Command ```terraform destroy``` not part of the actual Terraform workflow, but reviews the configurations set in the ```terraform plan``` stage and destroys the infrastructure objects in the plan.  Typically used for clean up purposes.