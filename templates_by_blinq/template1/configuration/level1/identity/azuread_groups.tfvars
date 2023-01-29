azuread_groups = {
  sandbox = {
    name                   = "sandbox_contributers"
    members                = {}
    owners                 =  ["{{ ignite.global.azuread_groups.owners | join('\",\"') }}"]
    prevent_duplicate_name = true
  }
}
