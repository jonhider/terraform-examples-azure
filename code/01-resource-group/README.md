## Terraform "Resource Group" Example

<p>This folder contains the files needed to create a resource group in an Azure subscription.

## Requirements
<ul>
    <li>Azure subscription</li>
    <li>Terraform version: 1.6.0 or later</li>
    <li>Uses the Terraform Azurerm provider,, which interacts with the Azure resource manager via APIs</li>
    <li></li>
</ul>

## Terraform Workflow
<ol>
    <li>Initialize the configuration
    <p>Initialize the Terraform configuration using the command ```terraform init```, which initilizes the working directory containing the Terraform configuration files, as well as download the AzureRM provider, which is notid in the ```providers.tf``` file</p>
    </li>
    <li>Validate the configuration
    <p>```terraform plan``` validates and verifies the syntax of the configuration files, before any changes are actually made to the infrastructure</p>
    </li>
    <li>Apply Changes
    <p>```terraform apply``` initiates the configuration changes to the Azure infrastructure.</p>
    </li>
    <li>Resource Cleanup</li>
    Not part of the actual Terraform workflow, but the command ```terraform destroy``` review the configurations set in the ```terraform plan``` stage and destroys the infrastructure objects as needed.
</ol>