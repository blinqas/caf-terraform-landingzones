
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t {{ ignite.global.onmicrosoft_domain }} \

rover \
{% if "not deployed" not in ignite.global.cred_keyvaults.cred_connectivity.stdout %}
  --impersonate-sp-from-keyvault-url {{ ignite.global.cred_keyvaults.cred_connectivity.stdout }}.vault.azure.net \
{% endif %}
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level2/connectivity/azurerm_firewall_policies/non_prod \
  -tfstate_subscription_id {{ ignite.global.subscriptions.sub_management }} \
  -target_subscription {{ ignite.global.subscriptions.sub_connectivity }} \
  -tfstate connectivity_firewall_policies_non_prod.tfstate \
  -env {{ ignite.global.env }} \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/connectivity_firewall_policies_non_prod.tfstate.tfplan \
  -a plan

```

