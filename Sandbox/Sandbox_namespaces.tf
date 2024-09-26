provider "vault" {
  alias           = "vault_provider"
  address         = var.vault_addr
  token           = var.vault_token
  skip_tls_verify = true
  version         = "4.3.0"
}

module "organization_international" {
  source  = "app.terraform.io/organization/terraform-vault-GIS-IAM-namespace/vault"
  version = "1.2.0"
   providers = {
    vault = vault.vault_provider
  }
  vault_root_namespace = "organization_international"
  vault_namespace  = "organization_international"
  ldap_organization_vault_admin_group = var.ldap_organization_vault_admin_group
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
  oidc_organization_vault_admin_group = var.oidc_organization_vault_admin_group
}

