# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t selmer365.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout blinq-5.6.4

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-idl0-aod.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level2/asvm \
  -tfstate_subscription_id 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -target_subscription 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env selmer \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan

```

