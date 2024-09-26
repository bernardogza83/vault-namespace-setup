variable "vault_addr" {
  description = "Marriot vault address"
  type        = string
}

variable "vault_token" {
  description = "Marriot vault token"
  type        = string
}

variable "ldap_organization_url" {
  description = "Marriot ldap url"
  type        = string
}

variable "ldap_organization_user_dn" {
  description = "Marriot ldap user dn"
  type        = string
}

variable "ldap_organization_user_filter" {
  description = "Marriot ldap user filter"
  type        = string
}

variable "ldap_organization_user_attr" {
  description = "Marriot ldap user attr"
  type        = string
}

variable "ldap_organization_group_dn" {
  description = "Marriot ldap group dn"
  type        = string
}

variable "ldap_organization_group_attr" {
  description = "Marriot ldap group attr"
  type        = string
}

variable "ldap_organization_bind_dn" {
  description = "Marriot ldap bind dn"
  type        = string
}

variable "ldap_organization_password" {
  description = "Marriot ldap password"
  default = ""
  type        = string
}

variable "ldap_organization_vault_admin_group" {
  description = "Marriot vault admin group"
  type        = string
}


variable "ldap_organization_sp_url" {
  description = "Marriot sp ldap url"
  type        = string
}

variable "ldap_organization_sp_user_dn" {
  description = "Marriot sp ldap user dn"
  type        = string
}

variable "ldap_organization_sp_user_filter" {
  description = "Marriot sp ldap user filter"
  type        = string
}

variable "ldap_organization_sp_user_attr" {
  description = "Marriot sp ldap user attr"
  type        = string
}

variable "ldap_organization_sp_group_dn" {
  description = "Marriot sp ldap group dn"
  type        = string
}

variable "ldap_organization_sp_group_attr" {
  description = "Marriot sp ldap group attr"
  type        = string
}

variable "ldap_organization_group_filter" {
  description = "Marriot ldap group filter"
  type        = string
}

variable "ldap_organization_sp_bind_dn" {
  description = "Marriot sp ldap bind dn"
  type        = string
}

variable "ldap_organization_sp_password" {
  description = "Marriot sp ldap password"
  default = ""
  type        = string
}

variable "oidc_organization_bound_issuer" {
  description = "organization oidc bound issuer"
  type        = string
}

variable "oidc_organization_default_role" {
  description = "Marriot oidc default role"
  type        = string
}

variable "oidc_organization_client_id" {
  description = "Marriot oidc client id"
  type        = string
}

variable "oidc_organization_client_secret" {
  description = "Marriot oidc client id"
  type        = string
}

variable "oidc_organization_oidc_discovery_url" {
  description = "Marriot oidc discpvery url"
  type        = string
}

variable "oidc_organization_groups_claim" {
  description = "Marriot oidc groups claim"
  type        = string
}

variable "ldap_organization_sp_group_filter" {
  description = "Marriot sp ldap group filter"
  type        = string
}

variable "oidc_organization_user_claim" {
  description = "Marriot oidc user claim"
  type        = string
}

variable "oidc_organization_allowed_redirect_uris" {
  type        = list(string)
  description = "allowed_redirect_uris"
}

variable "oidc_organization_oidc_scopes" {
  type        = list(string)
  description = "oidc_scopes"
}

variable "MI_International_teams_and_services" {
  description = "Mapping of teams and their respective services for root namespace"
  default     = {}
  type        = map(map(string))
}

variable "oidc_organization_vault_admin_group" {
  description = "Marriot vault admin group"
  type        = string
}