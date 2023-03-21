keyvault_keys = {

  deskey1_management = {
    keyvault_key       = "kv_des_keys_management"
    resource_group_key = "rg_des_keys"
    name               = "deskey1-management"
    key_type           = "RSA"
    key_size           = "2048"
    key_opts           = ["encrypt", "decrypt", "sign", "verify", "wrapKey", "unwrapKey"]
  }
  deskey2_management = {
    keyvault_key       = "kv_des_keys_management"
    resource_group_key = "rg_des_keys"
    name               = "deskey2-management"
    key_type           = "RSA"
    key_size           = "2048"
    key_opts           = ["encrypt", "decrypt", "sign", "verify", "wrapKey", "unwrapKey"]
  }
  deskey1_sbcaas = {
    keyvault_key       = "kv_des_keys_a2_sbcaas"
    resource_group_key = "rg_des_keys"
    name               = "deskey1-sbcaas"
    key_type           = "RSA"
    key_size           = "2048"
    key_opts           = ["encrypt", "decrypt", "sign", "verify", "wrapKey", "unwrapKey"]
  }
  deskey2_sbcaas = {
    keyvault_key       = "kv_des_keys_a2_sbcaas"
    resource_group_key = "rg_des_keys"
    name               = "deskey2-sbcaas"
    key_type           = "RSA"
    key_size           = "2048"
    key_opts           = ["encrypt", "decrypt", "sign", "verify", "wrapKey", "unwrapKey"]
  }
}

disk_encryption_sets = {

  deskey_set1_management = {
    name               = "deskey1-set1-management"
    resource_group_key = "rg_des_keys"
    key_vault_key_key  = "deskey1_management"
    keyvault = {
      key = "kv_des_keys_management"
    }
  }
  deskey_set2_management = {
    name               = "deskey2-set2-management"
    resource_group_key = "rg_des_keys"
    key_vault_key_key  = "deskey2_management"
    keyvault = {
      key = "kv_des_keys_management"
    }
  }
  deskey_set1_sbcaas = {
    name               = "deskey1-set1-sbcaas"
    resource_group_key = "rg_des_keys"
    key_vault_key_key  = "deskey1_sbcaas"
    keyvault = {
      key = "kv_des_keys_a2_sbcaas"
    }
  }
  deskey_set2_sbcaas = {
    name               = "deskey2-set2-sbcaas"
    resource_group_key = "rg_des_keys"
    key_vault_key_key  = "deskey2_sbcaas"
    keyvault = {
      key = "kv_des_keys_a2_sbcaas"
    }
  }
}

