role_mapping = {
  built_in_role_mapping = {
    management_group = {
      "root" = {
        "User Access Administrator" = {
          azuread_groups = {
            keys = ["level0"]
          }
        }
        "Management Group Contributor" = {
          azuread_groups = {
            keys = ["level0"]
          }
        }
        "Owner" = {
          azuread_groups = {
            keys = ["level0"]
          }
        }
      }
    }
    subscriptions = {
      "logged_in_subscription" = {
        "Owner" = {
          azuread_groups = {
            keys = ["level0"]
          }
        }
      }
    }
    resource_groups = {
      "level0" = {
        "Reader" = {
          azuread_groups = {
            keys = ["identity"]
          }
        }
      }
      "level1" = {
        "Reader" = {
          azuread_groups = {
            keys = ["identity"]
          }
        }
      }
      "level2" = {
        "Reader" = {
          azuread_groups = {
            keys = ["identity"]
          }
        }
      }
      "level3" = {
        "Reader" = {
          azuread_groups = {
            keys = ["identity"]
          }
        }
      }
      "level4" = {
        "Reader" = {
          azuread_groups = {
            keys = ["identity"]
          }
        }
      }
    }
    storage_accounts = {
      "level0" = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            keys = ["level0", "identity"]
          }
        }
      }
      "level1" = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            keys = ["level0", "identity"]
          }
        }
      }
      "level2" = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            keys = ["level0", "identity"]
          }
        }
      }
      "level3" = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            keys = ["level0", "identity"]
          }
        }
      }
      "level4" = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            keys = ["level0", "identity"]
          }
        }
      }
    }
    keyvaults = {
      "level0" = {
        "Key Vault Secrets Officer" = {
          azuread_groups = {
            keys = ["level0"]
          }
        }
        "Key Vault Secrets User" = {
          azuread_groups = {
            keys = ["identity"]
          }
        }
      }
      "level1" = {
        "Key Vault Secrets Officer" = {
          azuread_groups = {
            keys = ["level0"]
          }
        }
        "Key Vault Secrets User" = {
          azuread_groups = {
            keys = ["identity"]
          }
        }
      }
      "level2" = {
        "Key Vault Secrets Officer" = {
          azuread_groups = {
            keys = ["level0"]
          }
        }
        "Key Vault Secrets User" = {
          azuread_groups = {
            keys = ["identity"]
          }
        }
      }
      "level3" = {
        "Key Vault Secrets Officer" = {
          azuread_groups = {
            keys = ["level0"]
          }
        }
        "Key Vault Secrets User" = {
          azuread_groups = {
            keys = ["identity"]
          }
        }
      }
      "level4" = {
        "Key Vault Secrets Officer" = {
          azuread_groups = {
            keys = ["level0"]
          }
        }
        "Key Vault Secrets User" = {
          azuread_groups = {
            keys = ["identity"]
          }
        }
      }
    }
  }
}
