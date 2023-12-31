## Terraform Authentication to Azure
There are several methods to authenticate Terraform to Azure.  Hashcorp recommends authentication via the Azure CLI, when running Terraform locally.<br />
* [Authenticating using the Azure CLI](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli)
* [Authenticating using Managed Identity](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/managed_service_identity)
* [Authenticating using a Service Principal and Client Certificate](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_certificate)
* [Authenticating using a Service Principal and Client Secret](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret)
* [Authenticating using a Service Principal and OpenID Connect](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_oidc)

I use the "Authenticating using the Azure CLI" for my home projects and practice, but do need to warn that you you need to be conscious of not checking your secrets in.  