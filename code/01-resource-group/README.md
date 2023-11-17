## Example: Terraform "Resource Group"

<p>This folder contains the example files needed to create a resource group in an Azure subscription.

## Requirements
<ul>
    <li>Azure subscription</li>
    <li>Terraform version: 1.6.0 or later</li>
    <li>Uses the Terraform Azurerm provider, which interacts with the Azure resource manager via APIs</li>
</ul>

## Terraform Workflow
<ol>
    <li>Initialize the configuration

    Initialize the Terraform configuration using the command ```terraform init```, which initilizes the working directory containing the Terraform configuration files, as well as download the AzureRM provider, which is notid in the ```providers.tf``` file

    </li>
    <li>Validate the configuration

    ```terraform plan``` validates and verifies the syntax of the configuration files, before any changes are actually made to the infrastructure

    </li>
    <li>Apply Changes

    ```terraform apply``` initiates the configuration changes to the Azure infrastructure.

    </li>
    <li>Resource Cleanup

    Not part of the actual Terraform workflow, but the command ```terraform destroy``` review the configurations set in the ```terraform plan``` stage and destroys the infrastructure objects as needed.
    
    </li>
</ol>