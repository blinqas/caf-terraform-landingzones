azuread_groups = {
  sandbox = {
    name                   = "sandbox-contributers"
    members                = {}
    owners                 = ["53fa4078-128a-4495-b77a-00730629f862", "f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  security_keyvalut_admins = {
    name                   = "security-keyvault-admins"
    description            = "Members get full access to azure keyvaults in security landingzone"
    members                = {}
    owners                 = ["53fa4078-128a-4495-b77a-00730629f862", "f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  identity_keyvault_admins = {
    name                   = "identity-keyvault-admins"
    description            = "Members get full access to azure keyvaults in identity landingzone"
    members                = {}
    owners                 = ["53fa4078-128a-4495-b77a-00730629f862", "f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  caf_landingzones_dns_contributors = {
    name                   = "caf-landingzones-dns-contributors"
    description            = "Members can manage private dns zones"
    members                = {}
    owners                 = ["53fa4078-128a-4495-b77a-00730629f862", "f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
}
