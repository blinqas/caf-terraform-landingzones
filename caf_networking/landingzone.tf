module "solution" {
  source  = "../aztfmod/modules/networking"
  # version = "5.7.7"
  # source = "git::https://github.com/blinqas/terraform-azurerm-caf.git?ref=main"

  providers = {
    azurerm.vhub = azurerm.vhub
  }

  resource_groups                       = var.resource_groups
  networking                            = local.networking
  azuread                               = local.azuread
  identity                              = local.identity
  managed_identities                    = var.managed_identities
  role_mapping                          = var.role_mapping
  global_settings                       = local.global_settings

  diagnostics = {
    diagnostic_event_hub_namespaces = try(local.diagnostics.diagnostic_event_hub_namespaces, var.diagnostic_event_hub_namespaces)
    diagnostic_log_analytics        = try(local.diagnostics.diagnostic_log_analytics, var.diagnostic_log_analytics)
    diagnostic_storage_accounts     = try(local.diagnostics.diagnostic_storage_accounts, var.diagnostic_storage_accounts)
    diagnostics_definition          = local.diagnostics.diagnostics_definition
    diagnostics_destinations        = local.diagnostics.diagnostics_destinations
    event_hub_namespaces            = local.diagnostics.event_hub_namespaces
    log_analytics                   = local.diagnostics.log_analytics
    storage_accounts                = local.diagnostics.storage_accounts
  }

}
