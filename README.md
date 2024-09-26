# Vault Namespace Setup with Terraform for Marriott International

This repository contains Terraform configurations for setting up Vault namespaces for Marriott International in different environments: `sandbox`, `nonprod`, and `prod`.

## Structure

- `Sandbox/sandbox.tf`: Configuration for the sandbox environment.
- `Non-prod/non-prod.tf`: Configuration for the non-prod environment.
- `Prod/prod.tf`: Configuration for the prod environment.
- `provider.tf`: Vault provider configuration.
- `variables.tf`: Variable definitions.
- `terraform.tfvars`: Variable values for each environment.

## Requirements

- [Terraform](https://www.terraform.io/downloads.html) v1.0.0 or later
- A valid Vault address and token

### Components that are included on the vault namespace setup

- Admin policy
- kv-v1 secrets engine
- kv-v2 secrets engine
- Approle auth method ( Path: Approle)
- Ldap auth
- Ldap auth groups
- OIDC Auth
- Identoty groups for OIDC auth
- Transit Engine

## Example:

# Folder structure:

```
├── sandbox
│   ├── provider.tf
│   ├── sandbox_namespaces.tf
│   ├── sandbox.auto.tfvars
│   ├── variables.tf
```

# sandbox_namespaces.tf

```
provider "vault" {
  alias           = "vault_provider"
  address         = var.vault_addr
  token           = var.vault_token
  skip_tls_verify = true
  version         = "4.3.0"
}

module "marriott_international" {
   source  = "../module"
   providers = {
    vault = vault.vault_provider
  }
  vault_root_namespace = "marriott_international"
  vault_namespace  = "marriott_international"
  ldap_marriott_url = var.ldap_marriott_url
  ldap_marriott_user_attr = var.ldap_marriott_user_attr
  ldap_marriott_user_filter = var.ldap_marriott_user_filter
  ldap_marriott_user_dn = var.ldap_marriott_user_dn
  ldap_marriott_bind_dn = var.ldap_marriott_bind_dn
  ldap_marriott_group_attr = var.ldap_marriott_group_attr
  ldap_marriott_group_dn  = var.ldap_marriott_group_dn
  ldap_marriott_password = var.ldap_marriott_password
  ldap_marriott_sp_url = var.ldap_marriott_sp_url
  ldap_marriott_sp_user_attr = var.ldap_marriott_sp_user_attr
  ldap_marriott_sp_user_filter = var.ldap_marriott_sp_user_filter
  ldap_marriott_sp_user_dn = var.ldap_marriott_sp_user_dn
  ldap_marriott_sp_group_attr = var.ldap_marriott_sp_group_attr
  ldap_marriott_group_filter = var.ldap_marriott_group_filter
  ldap_marriott_sp_group_dn   = var.ldap_marriott_sp_group_dn
  ldap_marriott_sp_group_filter = var.ldap_marriott_sp_group_filter
  ldap_marriott_sp_bind_dn = var.ldap_marriott_sp_bind_dn
  ldap_marriott_sp_password = var.ldap_marriott_sp_password
  oidc_marriott_bound_issuer = var.oidc_marriott_bound_issuer
  oidc_marriott_default_role = var.oidc_marriott_default_role
  oidc_marriott_client_id = var.oidc_marriott_client_id
  oidc_marriott_client_secret = var.oidc_marriott_client_secret
  oidc_marriott_oidc_discovery_url = var.oidc_marriott_oidc_discovery_url
  oidc_marriott_groups_claim = var.oidc_marriott_groups_claim
  oidc_marriott_allowed_redirect_uris= var.oidc_marriott_allowed_redirect_uris
  oidc_marriott_user_claim = var.oidc_marriott_user_claim
  oidc_marriott_oidc_scopes = var.oidc_marriott_oidc_scopes
}
```

# commands to create and setup namespace

```
terraform init
```
This will initialize vault namespace setup module

```
Terraform apply
```
This will create namespace specified. 

## Environment configuration

### Prerequisites

- Ensure you have the required version of Terraform installed and a Vault server running with the correct address and token. 
- Set vault address and vault token as ebvironment variables. 

