variable "vault_addr" {
  description = "Marriot vault address"
  type        = string
}

variable "vault_token" {
  description = "Marriot vault token"
  type        = string
}

variable "ldap_marriott_url" {
  description = "Marriot ldap url"
  type        = string
}

variable "ldap_marriott_user_dn" {
  description = "Marriot ldap user dn"
  type        = string
}

variable "ldap_marriott_user_filter" {
  description = "Marriot ldap user filter"
  type        = string
}

variable "ldap_marriott_user_attr" {
  description = "Marriot ldap user attr"
  type        = string
}

variable "ldap_marriott_group_dn" {
  description = "Marriot ldap group dn"
  type        = string
}

variable "ldap_marriott_group_attr" {
  description = "Marriot ldap group attr"
  type        = string
}

variable "ldap_marriott_bind_dn" {
  description = "Marriot ldap bind dn"
  type        = string
}

variable "ldap_marriott_password" {
  description = "Marriot ldap password"
  default = ""
  type        = string
}

variable "ldap_marriott_vault_admin_group" {
  description = "Marriot vault admin group"
  type        = string
}


variable "ldap_marriott_sp_url" {
  description = "Marriot sp ldap url"
  type        = string
}

variable "ldap_marriott_sp_user_dn" {
  description = "Marriot sp ldap user dn"
  type        = string
}

variable "ldap_marriott_sp_user_filter" {
  description = "Marriot sp ldap user filter"
  type        = string
}

variable "ldap_marriott_sp_user_attr" {
  description = "Marriot sp ldap user attr"
  type        = string
}

variable "ldap_marriott_sp_group_dn" {
  description = "Marriot sp ldap group dn"
  type        = string
}

variable "ldap_marriott_sp_group_attr" {
  description = "Marriot sp ldap group attr"
  type        = string
}

variable "ldap_marriott_group_filter" {
  description = "Marriot ldap group filter"
  type        = string
}

variable "ldap_marriott_sp_bind_dn" {
  description = "Marriot sp ldap bind dn"
  type        = string
}

variable "ldap_marriott_sp_password" {
  description = "Marriot sp ldap password"
  default = ""
  type        = string
}

variable "oidc_marriott_bound_issuer" {
  description = "Marriott oidc bound issuer"
  type        = string
}

variable "oidc_marriott_default_role" {
  description = "Marriot oidc default role"
  type        = string
}

variable "oidc_marriott_client_id" {
  description = "Marriot oidc client id"
  type        = string
}

variable "oidc_marriott_client_secret" {
  description = "Marriot oidc client id"
  type        = string
}

variable "oidc_marriott_oidc_discovery_url" {
  description = "Marriot oidc discpvery url"
  type        = string
}

variable "oidc_marriott_groups_claim" {
  description = "Marriot oidc groups claim"
  type        = string
}

variable "ldap_marriott_sp_group_filter" {
  description = "Marriot sp ldap group filter"
  type        = string
}

variable "oidc_marriott_user_claim" {
  description = "Marriot oidc user claim"
  type        = string
}

variable "oidc_marriott_allowed_redirect_uris" {
  type        = list(string)
  description = "allowed_redirect_uris"
}

variable "oidc_marriott_oidc_scopes" {
  type        = list(string)
  description = "oidc_scopes"
}

variable "MI_International_teams_and_services" {
  description = "Mapping of teams and their respective services for root namespace"
  default     = {}
  type        = map(map(string))
}

variable "oidc_marriott_vault_admin_group" {
  description = "Marriot vault admin group"
  type        = string
}