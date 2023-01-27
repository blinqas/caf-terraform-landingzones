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
    subscription_id = "2bba06e7-6962-40b0-a572-7f6d04beeeeb"
  }
  identity = {
    name            = "identity"
    create_alias    = false
    subscription_id = "31a647bc-ff57-4d3e-8612-539d22542d71"
  }
  connectivity = {
    name            = "connectivity"
    create_alias    = false
    subscription_id = "e8a165dd-7334-4b84-bf3b-fbacba427a88"
  }
  management = {
    name            = "management"
    create_alias    = false
    subscription_id = "2bba06e7-6962-40b0-a572-7f6d04beeeeb"
  }
  security = {
    name            = "security"
    create_alias    = false
    subscription_id = "b0d21c7f-d47b-4a11-931c-d21d4a48a093"
  }
  sandbox = {
    name            = "sandbox"
    create_alias    = false
    subscription_id = "db31d599-8b9d-436a-a8c0-cb843e4198e0"
  }
}
