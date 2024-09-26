### VAULT VARIABLES

### LDAP MARRIOTT VARIABLES
ldap_marriott_vault_admin_group = "security-iam-platform-engineer"
ldap_marriott_url = "ldaps://marrvds.marriott.com:636"
ldap_marriott_user_dn = "ou=people,dc=marriott,dc=com"
ldap_marriott_bind_dn = "cn=svc-mi-ent-vault,ou=mi-ent-vault,ou=applications,dc=marriott,dc=com"
ldap_marriott_group_dn = "ou=devcon2vds,ou=groups,dc=marriott,dc=com"
ldap_marriott_group_attr = "cn"
ldap_marriott_group_filter = ""
ldap_marriott_user_attr  = "cn"
ldap_marriott_user_filter = ""

### LDAP MARRIOTT SP VARIABLES
ldap_marriott_sp_url = "ldaps://marrvds.marriott.com:636"
ldap_marriott_sp_user_dn = "ou=consultants,ou=pseudo-accounts,dc=marriott,dc=com"
ldap_marriott_sp_bind_dn = "cn=svc-mi-ent-vault-poc,ou=mi-ent-vault-poc,ou=applications,dc=marriott,dc=com"
ldap_marriott_sp_group_dn = "ou=devcon2vds,ou=groups,dc=marriott,dc=com"
ldap_marriott_sp_group_attr = "cn"
ldap_marriott_sp_group_filter = ""
ldap_marriott_sp_user_attr  = "cn"
ldap_marriott_sp_user_filter = "({{.UserAttr}}={{.Username}})"

### OIDC MARRIOTT VARIABLES
oidc_marriott_vault_admin_group = "cn=security-iam-platform-engineer,ou=devcon2vds,ou=groups,dc=marriott,dc=com"
oidc_marriott_bound_issuer = "https://extranetcloud.marriott.com/userauth"
oidc_marriott_default_role = "marriott"
oidc_marriott_client_id = "enterpriseVault"
oidc_marriott_oidc_discovery_url = "https://extranetcloud.marriott.com/userauth"
oidc_marriott_groups_claim = "MI_VAULT_USERS"
oidc_marriott_allowed_redirect_uris = ["https://mi-ent-vault-test.cloud.marriott.com/oidc/callback",
      "https://mi-ent-vault-test.cloud.marriott.com/ui/vault/auth/oidc/oidc/callback",
      "https://mi-ent-vault-test.aws-use1.cloud.marriott.com/oidc/callback",
      "https://mi-ent-vault-test.aws-use1.cloud.marriott.com/ui/vault/auth/oidc/oidc/callback",
      "https://mi-ent-vault-test.aws-use1.cloud.marriott.com/oidc/callback?namespace=*",
      "https://mi-ent-vault-test.aws-use1.cloud.marriott.com/ui/vault/auth/oidc/callback?namespace=*",
      "https://mi-ent-vault-test-pf.aws-usw2.cloud.marriott.com/oidc/callback",
      "https://mi-ent-vault-test-pf.aws-usw2.cloud.marriott.com/ui/vault/auth/oidc/oidc/callback",
      "https://mi-ent-vault-test-pf.aws-usw2.cloud.marriott.com/oidc/callback?namespace=*",
      "https://mi-ent-vault-test-pf.aws-usw2.cloud.marriott.com/ui/vault/auth/oidc/oidc/callback?namespace=*",
      "https://mi-crypt-poc-east.vault.cloud.marriott.com/ui/vault/auth/oidc/oidc/callback",
      "http://localhost:8250/oidc/callback",
      "https://mi-crypt-poc-east.vault.cloud.marriott.com/oidc/callback",
      "http://localhost:8200/ui/vault/auth/oidc/oidc/callback",
      "http://127.0.0.1:8250/ui/vault/auth/oidc/oidc/callback",
      "http://127.0.0.1:8250/oidc/callback",
      "https://mi-crypt-poc-west.vault.cloud.marriott.com/oidc/callback",
      "https://mi-crypt-poc-west.vault.cloud.marriott.com/ui/vault/auth/oidc/oidc/callback",
      "https://mi-crypt-poc.vault.cloud.marriott.com/ui/vault/auth/oidc/oidc/callback",
      "https://mi-crypt-poc.vault.cloud.marriott.com/oidc/callback"]
oidc_marriott_user_claim = "sub"
oidc_marriott_oidc_scopes = ["openid", "profile", "email"]