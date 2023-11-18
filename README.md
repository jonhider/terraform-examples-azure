## Terraform Azure Examples

[Terraform](https://developer.hashicorp.com/terraform/intro) is one of the open source tools that was introduced to the market by HashiCorp in 2014 as "Infrastructure as Code (IaC) software. IaC means we can write code for our infrastructure, that's used for building, updating, and managing cloud infrastructure. Terraform is "cloud-agnostic" and has support for multiple cloud platforms, including Amazon Web Services (AWS), Microsoft Azure, Google Cloud Platform (GCP), on-premises infrastructure and many others.  It has simple workflow of terraform init (initialize), terraform plan (plan configuration), terraform apply (create infrastructure).
<br /><br />
Terraform mainly uses Terraform configurationfiles ending with .tf or .tf.json, that hold detailed infrastrucutre about the infrastructure component to be created and/or managed, to run a single application or an entire data center.  Terraform generates an execution plan (terraform plan), which describes what it is going to do to reach the desired state, and then executes it to build the infrastructure described. If there is any change in the configuration file, Terraform is able to determine what has been changed and create incremental execution plans that can be applied.
<br /><br />
My current focus is on Azure services and this repo will reflect it.  I plan to at some point, replicate the Azure configuration files in this repo to a Google Cloud Platform (GCP) repository
<br /><br />

### Examples of Terraform configurations in Azure
All code is in the [code](https://github.com/jonhider/terraform-examples-azure/tree/main/code) folder and a README is included in each folder.<br /><br />
[00-azure-authentication](https://github.com/jonhider/terraform-examples-azure/tree/main/code/00-azure-authentication) - Terraform authentication to Azure<br />
[01-resource-group](https://github.com/jonhider/terraform-examples-azure/tree/main/code/01-resource-group) - Create an Azure resource group<br />
[02-storage-account](https://github.com/jonhider/terraform-examples-azure/tree/main/code/02-storage-account) - Create a storage account<br />
[03-variables](https://github.com/jonhider/terraform-examples-azure/tree/main/code/03-variables) - Create an Azure object using variables<br />
[04-terraform-state](https://github.com/jonhider/terraform-examples-azure/tree/main/code/04-terraform-state) - Terraform state<br />
[05-depends_on](https://github.com/jonhider/terraform-examples-azure/tree/main/code/05-depends_on) - depends_on to manage execution and dependencies<br />
[06-container-blob](https://github.com/jonhider/terraform-examples-azure/tree/main/code/06-container-blob) - Create an Azure blob storage container<br />
[07-network-security-group](https://github.com/jonhider/terraform-examples-azure/tree/main/code/07-network-security-group) - Create an Azure network security group<br />
[08-virtual-network](https://github.com/jonhider/terraform-examples-azure/tree/main/code/08-virtual-network) - Create an Azure virtual network (Vnet)<br />
[09-public-ip](https://github.com/jonhider/terraform-examples-azure/tree/main/code/09-public-ip) - Create a public ip address for vm public accessiblity<br />
[10-load-balancer](https://github.com/jonhider/terraform-examples-azure/tree/main/code/10-load-balancer) - Manage Azure traffice with an Azure load balancer<br />
[11-modules](https://github.com/jonhider/terraform-examples-azure/tree/main/code/11-modules) - Terraform modules<br />