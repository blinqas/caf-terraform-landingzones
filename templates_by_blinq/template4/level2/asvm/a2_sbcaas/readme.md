# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t pridok.no

cd /tf/caf/landingzones
git fetch origin
git checkout blinq-5.6.4

rover \
  --impersonate-sp-from-keyvault-url https://alz-kv-scl-hnp.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm/a2_sbcaas \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -target_subscription 26fa8950-d742-4940-bfcd-56d8586b11b3 \
  -tfstate asvm_a2_sbcaas.tfstate \
  -env alz \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_a2_sbcaas.tfstate.tfplan \
  -a plan

```
