azuread_groups = {
  caf_platform_maintainers = {
    name        = "platform-maintainers"
    description = "High privileged group to run all CAF deployments from vscode. Can be used to bootstrap or troubleshoot deployments."
    members = {
      object_ids = {{ level0.azuread_groups.members }}
    }
    owners                 = {{ global.azuread_groups.owners }}
    prevent_duplicate_name = true
  }
  caf_platform_contributors = {
    name        = "platform-contributors"
    description = "Can only execute terraform plans for level1 and level2. They can test platform improvements and propose PR."
    members = {
      object_ids = {{ level0.azuread_groups.members }}
    }
    owners                 = {{ global.azuread_groups.owners }}
    prevent_duplicate_name = true
  }
  caf_landingzones_maintainers = {
    name        = "landingzones-maintainers"
    description = "High privileged group to run all CAF deployments from vscode App Landingzones at caf level3 and level4. Can be used to bootstrap or troubleshoot deployments."
    members = {
      object_ids = {{ level0.azuread_groups.members }}
    }
    owners                 = {{ global.azuread_groups.owners }}
    prevent_duplicate_name = true
  }
  caf_landingzones_contributors = {
    name        = "landingzones-contributors"
    description = "Can only execute terraform plans for level3 and level4. They can test landingzone improvements and propose PR."
    members = {
      object_ids = {{ level0.azuread_groups.members }}
    }
    owners                 = {{ global.azuread_groups.owners }}
    prevent_duplicate_name = true
  }
  level0 = {
    name = "level0"
    members = {
      object_ids                     = []
      azuread_service_principal_keys = ["level0"]
    }
    owners                 = {{ global.azuread_groups.owners }}
    prevent_duplicate_name = true
  }
  alz = {
    name = "alz"
    members = {
      azuread_service_principal_keys = ["alz"]
    }
    owners                 = {{ global.azuread_groups.owners }}
    prevent_duplicate_name = true
  }
  identity = {
    name = "identity"
    members = {
      azuread_service_principal_keys = ["identity"]
    }
    owners                 = {{ global.azuread_groups.owners }}
    prevent_duplicate_name = true
  }
  management = {
    name = "management"
    members = {
      azuread_service_principal_keys = ["management"]
    }
    owners                 = {{ global.azuread_groups.owners }}
    prevent_duplicate_name = true
  }
  connectivity = {
    name = "connectivity"
    members = {
      azuread_service_principal_keys = ["connectivity"]
    }
    owners                 = {{ global.azuread_groups.owners }}
    prevent_duplicate_name = true
  }
  security = {
    name = "security"
    members = {
      azuread_service_principal_keys = ["security"]
    }
    owners                 = {{ global.azuread_groups.owners }}
    prevent_duplicate_name = true
  }
  subscription_creation_platform = {
    name = "subscription_creation_platform"
    members = {
      azuread_service_principal_keys = ["subscription_creation_platform"]
    }
    owners                 = {{ global.azuread_groups.owners }}
    prevent_duplicate_name = true
  }
  subscription_creation_landingzones = {
    name = "subscription_creation_landingzones"
    members = {
      azuread_service_principal_keys = ["subscription_creation_landingzones"]
    }
    owners                 = {{ global.azuread_groups.owners }}
    prevent_duplicate_name = true
  }
  landingzones = {
    name = "landingzones"
    members = {
      azuread_service_principal_keys = ["landingzones"]
    }
    owners                 = {{ global.azuread_groups.owners }}
    prevent_duplicate_name = true
  }
}