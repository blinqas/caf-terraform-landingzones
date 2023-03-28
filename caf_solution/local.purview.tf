locals {
  purview = merge(
    var.azuread,
    {
      purview_accounts             = var.purview_accounts
    }
  )
}
