network_security_group_definition = {
  empty_nsg = {
    version            = 1
    resource_group_key = "gitops"
    name               = "empty_nsg"
  }
  default_nsg = {
    version            = 1
    resource_group_key = "gitops"
    name               = "default"
  }
}