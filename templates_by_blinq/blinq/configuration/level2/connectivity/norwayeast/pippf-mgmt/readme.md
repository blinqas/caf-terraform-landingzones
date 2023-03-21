# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t pridok.no

cd /tf/caf/landingzones
git fetch origin
git checkout blinq-5.6.4

rover \
  --impersonate-sp-from-keyvault-url https://alz-kv-co-ydm.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/connectivity/norwayeast/pippf-mgmt \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -target_subscription c6f3347e-7428-42c1-bccc-6950e66a5e8b \
  -tfstate pippf_mgmt_norwayeast.tfstate \
  -env alz \
  -level level2 \
  -p ${TF_DATA_DIR}/pippf_mgmt_norwayeast.tfstate.tfplan \
  -a plan

```
