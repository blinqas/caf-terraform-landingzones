# Enterprise scale

## Deploy Enterprise Scale

Note you need to adjust the branch to deploy Enterprise Scale to blinq-5.6.4

```bash
az account clear
# login a with a user member of the caf-platform-maintainers group
rover login -t {{ ignite.global.onmicrosoft_domain }} \

cd /tf/caf/landingzones
git fetch origin
git checkout blinq-5.6.4

rover \
{% if "not deployed" not in ignite.global.cred_keyvaults.cred_alz.stdout %}
  --impersonate-sp-from-keyvault-url {{ ignite.global.cred_keyvaults.cred_alz.stdout }}.vault.azure.net \
{% endif %}
  -lz /tf/caf/landingzones/caf_solution/add-ons/caf_eslz \
  -var-folder /tf/caf/platform/configuration/level1/alz/es \
  -tfstate_subscription_id {{ ignite.global.subscriptions.sub_management }} \
  -target_subscription {{ ignite.global.subscriptions.sub_management }} \
  -tfstate alz_es.tfstate \
  -env {{ ignite.global.env }} \
  -level level1 \
  -p ${TF_DATA_DIR}/alz_es.tfstate.tfplan \
  -a plan

```

# Next steps

[Deploy asvm](../../level2/asvm/readme.md)
[Deploy Connectivity](../../level2/connectivity/virtual_wans/readme.md)
