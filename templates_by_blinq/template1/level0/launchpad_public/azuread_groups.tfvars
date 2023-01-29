azuread_groups = {
  caf_platform_maintainers = {
    name        = "platform-maintainers"
    description = "High privileged group to run all CAF deployments from vscode. Can be used to bootstrap or troubleshoot deployments."
    members = {
      object_ids = ["c99c3f70-63fb-49f4-a64f-57df3add09e0", "03bcd5b4-cc9c-4c7a-a446-756c4fbd3202"]
    }
    owners                 = ["cadf53a2-6eb0-45f9-a8c2-c4dbf905d6f3", "c99c3f70-63fb-49f4-a64f-57df3add09e0"]
    prevent_duplicate_name = true
  }
  caf_platform_contributors = {
    name        = "platform-contributors"
    description = "Can only execute terraform plans for level1 and level2. They can test platform improvements and propose PR."
    members = {
      object_ids = ["c99c3f70-63fb-49f4-a64f-57df3add09e0", "03bcd5b4-cc9c-4c7a-a446-756c4fbd3202"]
    }
    owners                 = ["cadf53a2-6eb0-45f9-a8c2-c4dbf905d6f3", "c99c3f70-63fb-49f4-a64f-57df3add09e0"]
    prevent_duplicate_name = true
  }
  caf_landingzones_maintainers = {
    name        = "landingzones-maintainers"
    description = "High privileged group to run all CAF deployments from vscode App Landingzones at caf level3 and level4. Can be used to bootstrap or troubleshoot deployments."
    members = {
      object_ids = ["c99c3f70-63fb-49f4-a64f-57df3add09e0", "03bcd5b4-cc9c-4c7a-a446-756c4fbd3202"]
    }
    owners                 = ["cadf53a2-6eb0-45f9-a8c2-c4dbf905d6f3", "c99c3f70-63fb-49f4-a64f-57df3add09e0"]
    prevent_duplicate_name = true
  }
  caf_landingzones_contributors = {
    name        = "landingzones-contributors"
    description = "Can only execute terraform plans for level3 and level4. They can test landingzone improvements and propose PR."
    members = {
      object_ids = ["c99c3f70-63fb-49f4-a64f-57df3add09e0", "03bcd5b4-cc9c-4c7a-a446-756c4fbd3202"]
    }
    owners                 = ["cadf53a2-6eb0-45f9-a8c2-c4dbf905d6f3", "c99c3f70-63fb-49f4-a64f-57df3add09e0"]
    prevent_duplicate_name = true
  }
  level0 = {
    name = "level0"
    members = {
      object_ids                     = []
      azuread_service_principal_keys = ["level0"]
    }
    owners                 = ["cadf53a2-6eb0-45f9-a8c2-c4dbf905d6f3", "c99c3f70-63fb-49f4-a64f-57df3add09e0"]
    prevent_duplicate_name = true
  }
  alz = {
    name = "alz"
    members = {
      azuread_service_principal_keys = ["alz"]
    }
    owners                 = ["cadf53a2-6eb0-45f9-a8c2-c4dbf905d6f3", "c99c3f70-63fb-49f4-a64f-57df3add09e0"]
    prevent_duplicate_name = true
  }
  identity = {
    name = "identity"
    members = {
      azuread_service_principal_keys = ["identity"]
    }
    owners                 = ["cadf53a2-6eb0-45f9-a8c2-c4dbf905d6f3", "c99c3f70-63fb-49f4-a64f-57df3add09e0"]
    prevent_duplicate_name = true
  }
  management = {
    name = "management"
    members = {
      azuread_service_principal_keys = ["management"]
    }
    owners                 = ["cadf53a2-6eb0-45f9-a8c2-c4dbf905d6f3", "c99c3f70-63fb-49f4-a64f-57df3add09e0"]
    prevent_duplicate_name = true
  }
  connectivity = {
    name = "connectivity"
    members = {
      azuread_service_principal_keys = ["connectivity"]
    }
    owners                 = ["cadf53a2-6eb0-45f9-a8c2-c4dbf905d6f3", "c99c3f70-63fb-49f4-a64f-57df3add09e0"]
    prevent_duplicate_name = true
  }
  security = {
    name = "security"
    members = {
      azuread_service_principal_keys = ["security"]
    }
    owners                 = ["cadf53a2-6eb0-45f9-a8c2-c4dbf905d6f3", "c99c3f70-63fb-49f4-a64f-57df3add09e0"]
    prevent_duplicate_name = true
  }
  subscription_creation_platform = {
    name = "subscription_creation_platform"
    members = {
      azuread_service_principal_keys = ["subscription_creation_platform"]
    }
    owners                 = ["cadf53a2-6eb0-45f9-a8c2-c4dbf905d6f3", "c99c3f70-63fb-49f4-a64f-57df3add09e0"]
    prevent_duplicate_name = true
  }
  subscription_creation_landingzones = {
    name = "subscription_creation_landingzones"
    members = {
      azuread_service_principal_keys = ["subscription_creation_landingzones"]
    }
    owners                 = ["cadf53a2-6eb0-45f9-a8c2-c4dbf905d6f3", "c99c3f70-63fb-49f4-a64f-57df3add09e0"]
    prevent_duplicate_name = true
  }
  landingzones = {
    name = "landingzones"
    members = {
      azuread_service_principal_keys = ["landingzones"]
    }
    owners                 = ["cadf53a2-6eb0-45f9-a8c2-c4dbf905d6f3", "c99c3f70-63fb-49f4-a64f-57df3add09e0"]
    prevent_duplicate_name = true
  }
}