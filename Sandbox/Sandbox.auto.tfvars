### VAULT VARIABLES

### LDAP organization VARIABLES
ldap_organization_vault_admin_group = "vaultvault-admin"
ldap_organization_url = ""
ldap_organization_user_dn = ""
ldap_organization_bind_dn = ""
ldap_organization_group_dn = ""
ldap_organization_group_attr = "cn"
ldap_organization_group_filter = ""
ldap_organization_user_attr  = "cn"
ldap_organization_user_filter = ""

### LDAP organization SP VARIABLES
ldap_organization_sp_url = ""
ldap_organization_sp_user_dn = ""
ldap_organization_sp_bind_dn = ""
ldap_organization_sp_group_dn = ""
ldap_organization_sp_group_attr = "cn"
ldap_organization_sp_group_filter = ""
ldap_organization_sp_user_attr  = "cn"
ldap_organization_sp_user_filter = "({{.UserAttr}}={{.Username}})"

### OIDC organization VARIABLES
oidc_organization_vault_admin_group = ""
oidc_organization_bound_issuer = ""
oidc_organization_default_role = ""
oidc_organization_client_id = "enterpriseVault"
oidc_organization_oidc_discovery_url = ""
oidc_organization_groups_claim = "MI_VAULT_USERS"
oidc_organization_allowed_redirect_uris = 
oidc_organization_user_claim = "sub"
oidc_organization_oidc_scopes = ["openid", "profile", "email"]