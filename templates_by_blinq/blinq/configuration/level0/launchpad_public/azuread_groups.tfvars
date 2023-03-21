azuread_groups = {
  caf_platform_maintainers = {
    name        = "platform-maintainers"
    description = "PIM Group. High privileged group to run all CAF deployments from vscode. Can be used to bootstrap or troubleshoot deployments."
    members = {
      object_ids = ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    }
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  caf_platform_contributors = {
    name        = "platform-contributors"
    description = "PIM Group. Can only execute terraform plans for level1 and level2. They can test platform improvements and propose PR."
    members = {
      object_ids = ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    }
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  caf_landingzones_maintainers = {
    name        = "landingzones-maintainers"
    description = "PIM Group. High privileged group to run all CAF deployments from vscode App Landingzones at caf level3 and level4. Can be used to bootstrap or troubleshoot deployments."
    members = {
      object_ids = ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    }
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  caf_landingzones_contributors = {
    name        = "landingzones-contributors"
    description = "PIM Group. Can only execute terraform plans for level3 and level4. They can test landingzone improvements and propose PR."
    members = {
      object_ids = ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    }
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  caf_tenant_root_owner = {
    name        = "tenant-root-owner"
    description = "PIM Group. Can create, update and delete Azure resources in all Subscriptions in tenant. Can assign and remove access roles to any entitiy. Can move and recive any Subscription to/from tenant."
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  caf_user_access_administrator = {
    name        = "user-access-administrator"
    description = "PIM Group. Can assign and remove access roles to any entitiy."
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  caf_es_network_management = {
    name        = "es-network-management"
    description = "PIM Group. Platform-wide global connectivity management: virtual networks, UDRs, NSGs, NVAs, VPN, Azure ExpressRoute, and others."
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }  
  level0 = {
    name = "level0"
    description = "SP Group (no users here). High privilage group for CAF level0, level1 and level2."
    members = {
      object_ids                     = []
      azuread_service_principal_keys = ["level0"]
    }
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  alz = {
    name = "alz"
    members = {
      azuread_service_principal_keys = ["alz"]
    }
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  identity = {
    name = "identity"
    members = {
      azuread_service_principal_keys = ["identity"]
    }
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  management = {
    name = "management"
    members = {
      azuread_service_principal_keys = ["management"]
    }
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  connectivity = {
    name = "connectivity"
    members = {
      azuread_service_principal_keys = ["connectivity"]
    }
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  security = {
    name = "security"
    members = {
      azuread_service_principal_keys = ["security"]
    }
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  subscription_creation_platform = {
    name = "subscription_creation_platform"
    members = {
      azuread_service_principal_keys = ["subscription_creation_platform"]
    }
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  subscription_creation_landingzones = {
    name = "subscription_creation_landingzones"
    members = {
      azuread_service_principal_keys = ["subscription_creation_landingzones"]
    }
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
  landingzones = {
    name = "landingzones"
    members = {
      azuread_service_principal_keys = ["landingzones"]
    }
    owners                 =  ["53fa4078-128a-4495-b77a-00730629f862","f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
    prevent_duplicate_name = true
  }
}