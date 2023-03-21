landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level0"
  key                 = "gitops_agents_blinq"
  tfstates = {
    launchpad = {
      level   = "current"
      tfstate = "caf_launchpad.tfstate"
    }
  }
}

propagate_launchpad_identities = true