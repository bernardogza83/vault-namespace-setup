
This repository contains Terraform configurations for setting up Vault namespaces for  in different environments: `sandbox`, `nonprod`, and `prod`.

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

module "organization_international" {
   source  = "../module"
   providers = {
    vault = vault.vault_provider
  }
  vault_root_namespace = "organization_international"
  vault_namespace  = "organization_international"
  ldap_organization_url = var.ldap_organization_url
  ldap_organization_user_attr = var.ldap_organization_user_attr
  ldap_organization_user_filter = var.ldap_organization_user_filter
  ldap_organization_user_dn = var.ldap_organization_user_dn
  ldap_organization_bind_dn = var.ldap_organization_bind_dn
  ldap_organization_group_attr = var.ldap_organization_group_attr
  ldap_organization_group_dn  = var.ldap_organization_group_dn
  ldap_organization_password = var.ldap_organization_password
  ldap_organization_sp_url = var.ldap_organization_sp_url
  ldap_organization_sp_user_attr = var.ldap_organization_sp_user_attr
  ldap_organization_sp_user_filter = var.ldap_organization_sp_user_filter
  ldap_organization_sp_user_dn = var.ldap_organization_sp_user_dn
  ldap_organization_sp_group_attr = var.ldap_organization_sp_group_attr
  ldap_organization_group_filter = var.ldap_organization_group_filter
  ldap_organization_sp_group_dn   = var.ldap_organization_sp_group_dn
  ldap_organization_sp_group_filter = var.ldap_organization_sp_group_filter
  ldap_organization_sp_bind_dn = var.ldap_organization_sp_bind_dn
  ldap_organization_sp_password = var.ldap_organization_sp_password
  oidc_organization_bound_issuer = var.oidc_organization_bound_issuer
  oidc_organization_default_role = var.oidc_organization_default_role
  oidc_organization_client_id = var.oidc_organization_client_id
  oidc_organization_client_secret = var.oidc_organization_client_secret
  oidc_organization_oidc_discovery_url = var.oidc_organization_oidc_discovery_url
  oidc_organization_groups_claim = var.oidc_organization_groups_claim
  oidc_organization_allowed_redirect_uris= var.oidc_organization_allowed_redirect_uris
  oidc_organization_user_claim = var.oidc_organization_user_claim
  oidc_organization_oidc_scopes = var.oidc_organization_oidc_scopes
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

