
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t {{ ignite.global.onmicrosoft_domain }} \

rover \
{% if "not deployed" not in ignite.global.cred_keyvaults.cred_security.stdout %}
  --impersonate-sp-from-keyvault-url {{ ignite.global.cred_keyvaults.cred_security.stdout }}.vault.azure.net \
{% endif %}
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level1/security \
  -tfstate_subscription_id {{ ignite.global.subscriptions.sub_management }} \
  -target_subscription {{ ignite.global.subscriptions.sub_security }} \
  -tfstate security.tfstate \
  -env {{ ignite.global.env }} \
  -level level1 \
  -w tfstate \
  -p ${TF_DATA_DIR}/security.tfstate.tfplan \
  -a plan

```

