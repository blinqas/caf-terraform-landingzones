module "solution" {
  source  = "aztfmod/caf/azurerm"
  version = "5.7.7"
  # source = "git::https://github.com/aztfmod/terraform-azurerm-caf.git?ref=main"

  resource_groups                       = var.resource_groups

}
