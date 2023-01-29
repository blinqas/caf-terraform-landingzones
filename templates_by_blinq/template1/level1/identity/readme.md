
# Identity
Deploy the identity services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t {{ ignite.global.onmicrosoft_domain }} \ -s {{ ignite.global.subscriptions.sub_management }}

rover \
{% if "not deployed" not in ignite.global.cred_keyvaults.cred_identity.stdout %}
  --impersonate-sp-from-keyvault-url {{ ignite.global.cred_keyvaults.cred_identity.stdout }}.vault.azure.net \
{% endif %}
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level1/identity \
  -tfstate_subscription_id {{ ignite.global.subscriptions.sub_management }} \
  -target_subscription {{ ignite.global.subscriptions.sub_identity }} \
  -tfstate identity.tfstate \
  -env {{ ignite.global.env }} \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a plan

```


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)
