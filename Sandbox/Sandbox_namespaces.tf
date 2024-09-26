provider "vault" {
  alias           = "vault_provider"
  address         = var.vault_addr
  token           = var.vault_token
  skip_tls_verify = true
  version         = "4.3.0"
}

module "marriott_international" {
  source  = "app.terraform.io/marriott/terraform-vault-GIS-IAM-namespace/vault"
  version = "1.2.0"
   providers = {
    vault = vault.vault_provider
  }
  vault_root_namespace = "marriott_international"
  vault_namespace  = "marriott_international"
  ldap_marriott_vault_admin_group = var.ldap_marriott_vault_admin_group
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
  oidc_marriott_vault_admin_group = var.oidc_marriott_vault_admin_group
}

