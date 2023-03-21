# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t pridok.no

cd /tf/caf/landingzones
git fetch origin
git checkout blinq-5.6.4

rover \
  --impersonate-sp-from-keyvault-url https://alz-kv-lzs-cih.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/a2_sbcaas/eastus/pippf/ \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -target_subscription 26fa8950-d742-4940-bfcd-56d8586b11b3 \
  -tfstate pippf_sbc004.tfstate \
  -env alz \
  -level level3 \
  -p ${TF_DATA_DIR}/pippf_sbc004.tfstate.tfplan \
  -a plan

```
