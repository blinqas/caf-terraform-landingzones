landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "sbcaas_prod_norwayeast_level3"
  key                 = "sbcaas_prod_norwayeast_level3"
  # key                 = "bs-prod-302-lz-sbcaas-sbc002-norwayeast"
  # tfc_organization    = "blinQ-Production"
  # tf_state_index      = "302"
  level               = "level3"
  tfstates = {
    connectivity_vwan_norwayeast = {
      tfstate   = "connectivity_vwan_norwayeast.tfstate"
      workspace = "tfstate"
      level     = "lower"
    },
    connectivity_dns_zone_sbcaas_cloud = {
      tfstate = "connectivity_dns_zone_sbcaas_cloud.tfstate"
      workspace = "tfstate"
      level = "lower"
    },
    sbcaas_subscriptions = {
      tfstate   = "sbcaas_subscriptions.tfstate"
      workspace = "tfstate"
    },
    #identity_level2_prod = {
    #  tfstate   = "identity_level2_prod.tfstate"
    #  workspace = "tfstate"
    #  level     = "lower"
    #},
    #asvm = {
    #  tfstate   = "asvm.tfstate"
    #  workspace = "tfstate"
    #  level     = "lower"
    #}
  }
}

custom_variables = {
  virtual_hub_lz_key = "connectivity_vwan_norwayeast"
}
