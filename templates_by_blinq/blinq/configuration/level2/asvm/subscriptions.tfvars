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
  azlz_a1_apps = {
    name            = "azlz_a1_apps"
    create_alias    = false
    subscription_id = "0f8df592-5664-49f1-ac92-0513b1afbfe8"
  }
  azlz_a2_sbcaas = {
    name            = "azlz_a2_sbcaas"
    create_alias    = false
    subscription_id = "26fa8950-d742-4940-bfcd-56d8586b11b3"
  }
}
