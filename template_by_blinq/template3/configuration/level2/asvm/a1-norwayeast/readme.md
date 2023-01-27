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
  -var-folder /tf/caf/platform/configuration/level2/asvm/a1-norwayeast \
  -tfstate_subscription_id 184e853f-0a6e-4803-9985-f710150643f1 \
  -target_subscription c25e0adb-f87a-4876-9fe4-93d4d2868414 \
  -tfstate asvm_a1_norwayeast.tfstate \
  -env pridok \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_a1_norwayeast.tfstate.tfplan \
  -a plan

```
