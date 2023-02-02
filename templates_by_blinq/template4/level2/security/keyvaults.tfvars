provider_azurerm_features_keyvault = {
  // set to true to cleanup the CI
  purge_soft_delete_on_destroy = false
}

keyvaults = {
  kv_des_keys_a2_sbcaas = {
    name                        = "kv-des-keys-a2-sbcaas"
    resource_group_key          = "rg_des_keys"
    sku_name                    = "standard"
    soft_delete_enabled         = true
    purge_protection_enabled    = true
    enabled_for_disk_encryption = true

    network = {
      bypass         = "AzureServices"
      default_action = "Deny"
      ip_rules       = ["20.0.177.210/32"]
    }

    creation_policies = {
      logged_in_user = {
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
        key_permissions    = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "Decrypt", "Encrypt", "UnwrapKey", "WrapKey", "Verify", "Sign", "Purge"]
      }
      azuread_groups = {
        lz_key             = "launchpad"
        azuread_group_key  = "landingzones"
        secret_permissions = ["Get"]
        key_permissions    = ["Get"]
        certificate_permissions = ["Get"]
      }
    }
  }
}

keyvault_keys = {
  deskey1_a2_sbcaas = {
    keyvault_key       = "kv_des_keys_a2_sbcaas"
    resource_group_key = "rg_des_keys"
    name               = "deskey1-a2-sbcaas"
    key_type           = "RSA"
    key_size           = "2048"
    key_opts           = ["encrypt", "decrypt", "sign", "verify", "wrapKey", "unwrapKey"]
  }
  deskey2_a2_sbcaas = {
    keyvault_key       = "kv_des_keys_a2_sbcaas"
    resource_group_key = "rg_des_keys"
    name               = "deskey2-a2-sbcaas"
    key_type           = "RSA"
    key_size           = "2048"
    key_opts           = ["encrypt", "decrypt", "sign", "verify", "wrapKey", "unwrapKey"]
  }
}

disk_encryption_sets = {
  deskey_set1_a2_sbcaas = {
    name               = "deskey1-set1-a2-sbcaas"
    resource_group_key = "rg_des_keys"
    key_vault_key_key  = "deskey1_a2_sbcaas"
    keyvault = {
      key = "kv_des_keys_a2_sbcaas"
    }
  }
  deskey_set2 = {
    name               = "deskey2-a2-sbcaas"
    resource_group_key = "rg_des_keys"
    key_vault_key_key  = "deskey2_a2_sbcaas"
    keyvault = {
      key = "kv_des_keys_a2_sbcaas"
    }
  }
}
