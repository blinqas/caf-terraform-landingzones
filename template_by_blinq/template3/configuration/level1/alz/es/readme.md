# Enterprise scale

## Deploy Enterprise Scale

Note you need to adjust the branch to deploy Enterprise Scale to blinq-5.6.4

```bash
az account clear
# login a with a user member of the caf-platform-maintainers group
rover login -t selmer365.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout blinq-5.6.4

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-es-wno.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution/add-ons/caf_eslz \
  -var-folder /tf/caf/platform/configuration/level1/alz/es \
  -tfstate_subscription_id 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -target_subscription 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -tfstate alz_es.tfstate \
  -env selmer \
  -level level1 \
  -p ${TF_DATA_DIR}/alz_es.tfstate.tfplan \
  -a plan

```

# Next steps

[Deploy asvm](../../level2/asvm/readme.md)
[Deploy Connectivity](../../level2/connectivity/virtual_wans/readme.md)
