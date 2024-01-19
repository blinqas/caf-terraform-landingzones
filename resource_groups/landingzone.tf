module "solution" {
  #source  = "aztfmod/caf/azurerm"
  #version = "5.7.7"
  source = "git::https://github.com/blinqas/terraform-azurerm-caf.git?ref=test2"

  providers = {
    azurerm.vhub = azurerm.vhub
  }

  resource_groups                       = var.resource_groups

}
