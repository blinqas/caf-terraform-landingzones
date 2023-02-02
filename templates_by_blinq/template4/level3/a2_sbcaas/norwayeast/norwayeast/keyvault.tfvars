provider_azurerm_features_keyvault = {
  // set to true to cleanup the CI
  purge_soft_delete_on_destroy = false
}

keyvaults = {
  lz_sbcaas_kv_cmk_desk_norwayeast = {
    name                        = "norwayeast"
    resource_group_key          = "lz_sbcaas_rg_norwayeast"
    sku_name                    = "standard"
    soft_delete_enabled         = true
    purge_protection_enabled    = true
    enabled_for_disk_encryption = true

    network = {
      bypass         = "AzureServices"
      default_action = "Deny"
      ip_rules       = ["88.89.224.169/32", "77.18.48.10"]
    }

    creation_policies = {
      logged_in_user = {
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
        key_permissions    = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "Decrypt", "Encrypt", "UnwrapKey", "WrapKey", "Verify", "Sign", "Purge"]
      }
    }

    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "keyvault"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
  }
}

keyvault_keys = {
  deskey1 = {
    keyvault_key       = "lz_sbcaas_kv_cmk_desk_norwayeast"
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    name               = "deskey1"
    key_type           = "RSA"
    key_size           = "2048"
    key_opts           = ["encrypt", "decrypt", "sign", "verify", "wrapKey", "unwrapKey"]
  }
  deskey2 = {
    keyvault_key       = "lz_sbcaas_kv_cmk_desk_norwayeast"
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    name               = "deskey2"
    key_type           = "RSA"
    key_size           = "2048"
    key_opts           = ["encrypt", "decrypt", "sign", "verify", "wrapKey", "unwrapKey"]
  }
}

disk_encryption_sets = {
  deskey_set1 = {
    name               = "lz-sbcaas-des-set1-norwayeast"
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    key_vault_key_key  = "deskey1"
    keyvault = {
      key = "lz_sbcaas_kv_cmk_desk_norwayeast"
    }
  }
  deskey_set2 = {
    name               = "lz-sbcaas-des-set2-norwayeast"
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    key_vault_key_key  = "deskey2"
    keyvault = {
      key = "lz_sbcaas_kv_cmk_desk_norwayeast"
    }
  }
}
