landingzone = {
  backend_type        = "azurerm"
  level               = "level1"
  key                 = "alz_es"
  global_settings_key = "security"
  tfstates = {
    launchpad = {
      tfstate   = "caf_launchpad.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    management = {
      tfstate   = "management.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
    subscriptions = {
      tfstate   = "platform_subscriptions.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
    identity = {
      tfstate   = "identity.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
    security = {
      tfstate   = "security.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}

propagate_launchpad_identities = true
