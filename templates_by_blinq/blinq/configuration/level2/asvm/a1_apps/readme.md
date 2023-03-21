# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t pridok.no

cd /tf/caf/landingzones
git fetch origin
git checkout blinq-5.6.4

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-lzs-gys.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm/a1_apps \
  -tfstate_subscription_id 184e853f-0a6e-4803-9985-f710150643f1 \
  -target_subscription 0f8df592-5664-49f1-ac92-0513b1afbfe8 \
  -tfstate asvm_a1_apps.tfstate \
  -env pridok \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_a1_apps.tfstate.tfplan \
  -a plan

```
