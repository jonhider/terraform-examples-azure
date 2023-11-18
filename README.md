## Terraform Azure Examples

[Terraform](https://developer.hashicorp.com/terraform/intro) is one of the open source tools that was introduced to the market by HashiCorp in 2014 as "Infrastructure as Code (IaC) software. IaC means we can write code for our infrastructure, that's used for building, updating, and managing cloud infrastructure. Terraform is "cloud-agnostic" and has support for multiple cloud platforms, including Amazon Web Services (AWS), Microsoft Azure, Google Cloud Platform (GCP), on-premises infrastructure and many others.  It has simple workflow of terraform init (initialize), terraform plan (plan configuration), terraform apply (create infrastructure).
<br /><br />
Terraform mainly uses Terraform configurationfiles ending with .tf or .tf.json, that hold detailed infrastrucutre about the infrastructure component to be created and/or managed, to run a single application or an entire data center.  Terraform generates an execution plan (terraform plan), which describes what it is going to do to reach the desired state, and then executes it to build the infrastructure described. If there is any change in the configuration file, Terraform is able to determine what has been changed and create incremental execution plans that can be applied.
<br /><br />
My current focus is on Azure services and this repo will reflect it.  I plan to at some point, replicate the Azure configuration files in this repo to a Google Cloud Platform (GCP) repository
<br /><br />

## Terraform Configurations in Azure Examples
All code is in the [code](https://github.com/jonhider/terraform-examples-azure/tree/main/code) folder and a README is included in each folder.<br /><br />

| Module | Description |
| --- | --- |
| [00-azure-authentication](https://github.com/jonhider/terraform-examples-azure/tree/main/code/00-azure-authentication) | Terraform authentication to Azure |
| [01-resource-group](https://github.com/jonhider/terraform-examples-azure/tree/main/code/01-resource-group) | Create an Azure resource group |
| [02-storage-account](https://github.com/jonhider/terraform-examples-azure/tree/main/code/02-storage-account) | Create a storage account |
| [03-variables](https://github.com/jonhider/terraform-examples-azure/tree/main/code/03-variables) | Create an Azure object using variables |
| [04-terraform-state](https://github.com/jonhider/terraform-examples-azure/tree/main/code/04-terraform-state) | Terraform state |
| [05-depends_on](https://github.com/jonhider/terraform-examples-azure/tree/main/code/05-depends_on) | ```depends_on``` to manage execution and dependencies |
| [06-container-blob](https://github.com/jonhider/terraform-examples-azure/tree/main/code/06-container-blob) | Create an Azure blob storage container |
| [07-network-security-group](https://github.com/jonhider/terraform-examples-azure/tree/main/code/07-network-security-group) | Create an Azure network security group |
| [08-virtual-network](https://github.com/jonhider/terraform-examples-azure/tree/main/code/08-virtual-network) | Create an Azure virtual network (Vnet) |
| [09-public-ip](https://github.com/jonhider/terraform-examples-azure/tree/main/code/09-public-ip) | Create a public ip address for vm public accessiblity |
| [10-load-balancer](https://github.com/jonhider/terraform-examples-azure/tree/main/code/10-load-balancer) | Manage Azure traffic with an Azure load balancer |
| [11-modules](https://github.com/jonhider/terraform-examples-azure/tree/main/code/11-modules) | Terraform modules |
| [12-provisioners](https://github.com/jonhider/terraform-examples-azure/tree/main/code/12-provisioners) | Terraform provisioners |
| [13-loops](https://github.com/jonhider/terraform-examples-azure/tree/main/code/13-loops) | Terraform loops |
| [14-functions](https://github.com/jonhider/terraform-examples-azure/tree/main/code/14-functions) | Terraform functions |


## Terraform CLI

Terraform CLI is an open source command line application created by Hashicorp allowing you to run difference commands and sub commmands.  The main commands are ```init```, ```plan```, and ```apply```.  The sub commands can be ran as flags after the main command.  Run ```terraform``` from any command line to see the output.
<br /><br />
To get help with any command, simply run ```terraform_command -h``` Ex: ```terraform init -h```
<br/><br />
```
PS C:\_development\> terraform
Usage: terraform [global options] <subcommand> [args]

The available commands for execution are listed below.
The primary workflow commands are given first, followed by
less common or more advanced commands.

Main commands:
  init          Prepare your working directory for other commands
  validate      Check whether the configuration is valid
  plan          Show changes required by the current configuration
  apply         Create or update infrastructure
  destroy       Destroy previously-created infrastructure

All other commands:
  console       Try Terraform expressions at an interactive command prompt
  fmt           Reformat your configuration in the standard style
  force-unlock  Release a stuck lock on the current workspace
  get           Install or upgrade remote Terraform modules
  graph         Generate a Graphviz graph of the steps in an operation
  import        Associate existing infrastructure with a Terraform resource
  login         Obtain and save credentials for a remote host
  logout        Remove locally-stored credentials for a remote host
  metadata      Metadata related commands
  output        Show output values from your root module
  providers     Show the providers required for this configuration
  refresh       Update the state to match remote systems
  show          Show the current state or a saved plan
  state         Advanced state management
  taint         Mark a resource instance as not fully functional
  test          Execute integration tests for Terraform modules
  untaint       Remove the 'tainted' state from a resource instance
  version       Show the current Terraform version
  workspace     Workspace management

Global options (use these before the subcommand, if any):
  -chdir=DIR    Switch to a different working directory before executing the
                given subcommand.
  -help         Show this help output, or the help for a specified subcommand.
  -version      An alias for the "version" subcommand.
```