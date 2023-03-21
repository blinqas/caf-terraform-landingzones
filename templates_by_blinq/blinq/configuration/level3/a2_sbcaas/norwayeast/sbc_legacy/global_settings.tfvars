# Global Settings are not required on every workspace and level any more, as long as the settings can be sourced from another workspace.

global_settings = {
  environment = "bslz"
  prefix      = "lz-sbcaas"
  suffix      = "norwayeast"

  # Default region. When not set to a resource it will use that value
  default_region = "region2"

  regions = {
    region1 = "westeurope",
    region2 = "norwayeast",
    region3 = "uksouth",
    region4 = "eastus",
    region5 = "southeastasia"
  }

  # core tags to be applied accross this CAF environment.
  tags = {
    owner       = "blinQ AS"
    environment = "bslz"
  }

  # naming convention settings
  # for more settings on naming convention, please refer to the provider documentation: https://github.com/aztfmod/terraform-provider-azurecaf
  #
  # passthrough means the default CAF naming convention is not applied and you are responsible
  # of the unicity of the names you are giving. the CAF provider will clear out
  passthrough = false
  # adds random chars at the end of the names produced by the provider
  # random_length = 3
  # The few letters identify the resource type will be added, acording to Azure naming convention.
  use_slug = true
  # all resources deployed will inherit tags from the parent resource group
  inherit_tags = true
}
