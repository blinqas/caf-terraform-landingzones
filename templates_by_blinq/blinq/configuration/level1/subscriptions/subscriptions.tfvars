#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#
subscriptions = {
  launchpad = {
    name            = "management"
    create_alias    = false
    subscription_id = "21a5bbce-56bb-48b5-bf13-b063e77045bb"
  }
  identity = {
    name            = "identity"
    create_alias    = false
    subscription_id = "2ec7c658-b4ec-430b-9830-3fac495939e7"
  }
  connectivity = {
    name            = "connectivity"
    create_alias    = false
    subscription_id = "c6f3347e-7428-42c1-bccc-6950e66a5e8b"
  }
  management = {
    name            = "management"
    create_alias    = false
    subscription_id = "21a5bbce-56bb-48b5-bf13-b063e77045bb"
  }
  security = {
    name            = "security"
    create_alias    = false
    subscription_id = "ae93f1aa-35bb-44d4-bb7a-9fe7406743b3"
  }
  sandbox = {
    name            = "sandbox"
    create_alias    = false
    subscription_id = "aa0afad8-420e-4d68-ac10-f03ddaca6b39"
  }
}
