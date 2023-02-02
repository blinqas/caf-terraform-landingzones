archetype_config_overrides = {
  root = {
    archetype_id = "root"
    parameters = {
      "Allowed-Locations" = {
        "listOfAllowedLocations" = {
          values = ["westeurope", "norwayeast", "uksouth", "eastus", "southeastasia"]
        }        
      }
      "Deny-RSG-Locations" = {
        "listOfAllowedLocations" = {
          values = ["westeurope", "norwayeast", "uksouth", "eastus", "southeastasia"]
        }  
      }
      "Deny-Subnet-Without-Nsg" = {
        "effect" = {
          value = "Audit"
        }
      }
      "Deny-Subnet-Without-Udr" = {
        "effect" = {
          value = "Audit"
        }
      }
      "sec_export_log_analytics" = {
        "createResourceGroup" = {
          bool = true
        }
        "resourceGroupName" = {
          value = "es-asc-export"
        }
        "resourceGroupLocation" = {
          value = "norwayeast"
        }
        "workspaceResourceId" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
        "exportedDataTypes" = {
          values = ["Security recommendations", "Security alerts", "Overall secure score", "Secure score controls", "Regulatory compliance", "Overall secure score - snapshot", "Secure score controls - snapshot", "Regulatory compliance - snapshot"]
        }
        "recommendationSeverities" = {
          values = ["Medium", "High", "Low"]
        }
        "isSecurityFindingsEnabled" = {
          bool = true
        }
        "alertSeverities" = {
          values = ["Medium", "High", "Low"]
        }
      }
      "Deploy-ASC-Monitoring" = {
        "aadAuthenticationInSqlServerMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "diskEncryptionMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "encryptionOfAutomationAccountMonitoringEffect" = {
          value = "Audit"
        }
        "identityDesignateLessThanOwnersMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "identityDesignateMoreThanOneOwnerMonitoringEffect" = {
          value = "Disabled"
        }
        "identityEnableMFAForWritePermissionsMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "identityRemoveDeprecatedAccountMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "identityRemoveDeprecatedAccountWithOwnerPermissionsMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "identityRemoveExternalAccountWithOwnerPermissionsMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "identityRemoveExternalAccountWithReadPermissionsMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "identityRemoveExternalAccountWithWritePermissionsMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "jitNetworkAccessMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "networkSecurityGroupsOnSubnetsMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "sqlDbEncryptionMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "sqlManagedInstanceAdvancedDataSecurityEmailAdminsMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "sqlManagedInstanceAdvancedDataSecurityEmailsMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "sqlServerAdvancedDataSecurityEmailAdminsMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "sqlServerAdvancedDataSecurityMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "systemUpdatesMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "useRbacRulesMonitoringEffect" = {
          value = "Disabled"
        }
        "vmssSystemUpdatesMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "windowsDefenderExploitGuardMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "autoProvisioningOfTheLogAnalyticsAgentShouldBeEnabledOnYourSubscriptionMonitoringEffect" = {
          value = "Disabled"
        }
      }
      "Deploy-MDFC-Config-CAF" = {
        "emailSecurityContact" = {
          value = "support@blinq.no"
        }
        "minimalSeverity" = {
          value = "High"
        }
        "enableAscForAppServices" = {
          value = "DeployIfNotExists"
        }
        "enableAscForArm" = {
          value = "DeployIfNotExists"
        }
        "enableAscForDns" = {
          value = "DeployIfNotExists"
        }
        "enableAscForKeyVault" = {
          value = "DeployIfNotExists"
        }
        "enableAscForOssDb" = {
          value = "DeployIfNotExists"
        }
        "enableAscForServers" = {
          value = "DeployIfNotExists"
        }
        "enableAscForSql" = {
          value = "DeployIfNotExists"
        }
        "enableAscForSqlOnVm" = {
          value = "DeployIfNotExists"
        }
        "enableAscForStorage" = {
          value = "DeployIfNotExists"
        }
        "enableAscForContainers" = {
          value = "DeployIfNotExists"
        }
      }
      "Deploy-AzActivity-Log" = {
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
      }
      "Deploy-Resource-Diag" = {
        "profileName" = {
          value = "alz-diagnostic-log"
        }
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
      }
      "Deploy-VM-Monitoring" = {
        "logAnalytics_1" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
      }
      "Deploy-VMSS-Monitoring" = {
        "logAnalytics_1" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
      }
    }
    access_control = {}
  }

  landing-zones = {
    archetype_id = "landing-zones"
    parameters = {
      "CAF-Deploy-Nsg-FlowLogs" = {
        "effect" = {
          value = "DeployIfNotExists"
        }
        "retention" = {
          integer = 5
        }
        "storageAccountResourceId" = {
          lz_key        = "management"
          output_key    = "objects"
          resource_type = "storage_accounts"
          resource_key  = "nsgflogs"
          attribute_key = "id"
        }
        "interval" = {
          integer = 60
        }
        "flowAnalyticsEnabled" = {
          bool = true
        }
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
      }
      "Deny-Public-Endpoints" = {
        "ACRPublicIpDenyEffect" = {
          value = "Audit"
        }
        "AFSPublicIpDenyEffect" = {
          value = "Audit"
        }
        "AKSPublicIpDenyEffect" = {
          value = "Audit"
        }
        "BatchPublicIpDenyEffect" = {
          value = "Audit"
        }
        "CosmosPublicIpDenyEffect" = {
          value = "Audit"
        }
        "KeyVaultPublicIpDenyEffect" = {
          value = "Audit"
        }
        "MySQLFlexPublicIpDenyEffect" = {
          value = "Audit"
        }
        "PostgreSQLFlexPublicIpDenyEffect" = {
          value = "Audit"
        }
        "SqlServerPublicIpDenyEffect" = {
          value = "Audit"
        }
        "StoragePublicIpDenyEffect" = {
          value = "Audit"
        }
      }
    }
    access_control = {
      "Owner" = {
        "azuread_groups" = {
          lz_key        = "launchpad"
          attribute_key = "id"
          resource_keys = ["landingzones", "subscription_creation_landingzones"]
        }
      }
    }
  }

  connectivity = {
    archetype_id = "platform_connectivity"
    parameters = {
    }
    access_control = {
      "Owner" = {
        "azuread_groups" = {
          lz_key        = "launchpad"
          attribute_key = "id"
          resource_keys = ["connectivity"]
        }
      }
      "[ES-CONNECTIVITY] CAF-network-vhub-peering" = {
        "azuread_groups" = {
          lz_key        = "launchpad"
          attribute_key = "id"
          resource_keys = ["subscription_creation_landingzones", "identity", "management"]
        }
      }
    }
  }

  management = {
    archetype_id = "platform_management"
    parameters = {
    }
    access_control = {
      "Owner" = {
        "azuread_groups" = {
          lz_key        = "launchpad"
          attribute_key = "id"
          resource_keys = ["management"]
        }
      }
    }
  }

  identity = {
    archetype_id = "platform_identity"
    parameters = {
    }
    access_control = {
      "Contributor" = {
        "azuread_groups" = {
          lz_key        = "launchpad"
          attribute_key = "id"
          resource_keys = ["identity"]
        }
      }
    }
  }

  security = {
    archetype_id = "platform_security"
    parameters = {
    }
    access_control = {
      "Contributor" = {
        "azuread_groups" = {
          lz_key        = "launchpad"
          attribute_key = "id"
          resource_keys = ["security"]
        }
      }
    }
  }

  decommissioned = {
    archetype_id = "platform_decommissioned"
    parameters = {
    }
    access_control = {}
  }

  platform = {
    archetype_id = "platform"
    parameters = {
      "CAF-Deploy-Nsg-FlowLogs" = {
        "effect" = {
          value = "DeployIfNotExists"
        }
        "retention" = {
          integer = 5
        }
        "storageAccountResourceId" = {
          lz_key        = "management"
          output_key    = "objects"
          resource_type = "storage_accounts"
          resource_key  = "nsgflogs"
          attribute_key = "id"
        }
        "interval" = {
          integer = 60
        }
        "flowAnalyticsEnabled" = {
          bool = true
        }
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
      }
    }
    access_control = {}
  }

  sandboxes = {
    archetype_id = "platform_sandboxes"
    parameters = {
    }
    access_control = {
      "Contributor" = {
        "azuread_groups" = {
          lz_key        = "identity"
          attribute_key = "id"
          resource_keys = ["sandbox"]
        }
      }
    }
  }

}
