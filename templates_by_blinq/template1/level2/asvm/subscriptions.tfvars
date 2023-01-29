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
  azlz_a1_norwayeast = {
    name            = "azlz_a1_norwayeast"
    create_alias    = false
    subscription_id = "c25e0adb-f87a-4876-9fe4-93d4d2868414"
  }
  azlz_a2_westeurope = {
    name            = "azlz_a2_westeurope"
    create_alias    = false
    subscription_id = "2235a3d1-d4c2-490d-9f1d-20466383a534"
  }
}
