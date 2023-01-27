keyvault_access_policies = {
  cred_level0 = {
    gitops = {
      object_id          = {{ dynamic.sp_object_id }}
      secret_permissions = ["Get"]
    }
  }
  cred_identity = {
    gitops = {
      object_id          = {{ dynamic.sp_object_id }}
      secret_permissions = ["Get"]
    }
  }
  cred_management = {
    gitops = {
      object_id          = {{ dynamic.sp_object_id }}
      secret_permissions = ["Get"]
    }
  }
  cred_alz = {
    gitops = {
      object_id          = {{ dynamic.sp_object_id }}
      secret_permissions = ["Get"]
    }
  }
  cred_connectivity = {
    gitops = {
      object_id          = {{ dynamic.sp_object_id }}
      secret_permissions = ["Get"]
    }
  }
  cred_security = {
    gitops = {
      object_id          = {{ dynamic.sp_object_id }}
      secret_permissions = ["Get"]
    }
  }
  cred_subscription_creation_platform = {
    gitops = {
      object_id          = {{ dynamic.sp_object_id }}
      secret_permissions = ["Get"]
    }
  }
  cred_subscription_creation_landingzones = {
    gitops = {
      object_id          = {{ dynamic.sp_object_id }}
      secret_permissions = ["Get"]
    }
  }
  cred_landingzones = {
    gitops = {
      object_id          = {{ dynamic.sp_object_id }}
      secret_permissions = ["Get"]
    }
  }
}