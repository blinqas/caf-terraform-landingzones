
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t blinqservices.onmicrosoft.com -s 26fa8950-d742-4940-bfcd-56d8586b11b3

cd /tf/caf/landingzones
git fetch origin
git checkout main

rover \
  --impersonate-sp-from-keyvault-url https://alz-kv-scl-hnp.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm/a2_sbcaas/uksouth/vnet \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -target_subscription 26fa8950-d742-4940-bfcd-56d8586b11b3 \
  -tfstate vnet_a2_sbcaas_uksouth.tfstate \
  -env alz \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/vnet_a2_sbcaas_uksouth.tfstate.tfplan \
  -a plan

```

rover \
  --impersonate-sp-from-keyvault-url https://alz-kv-scl-hnp.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm/a2_sbcaas/uksouth/vnet \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -target_subscription 26fa8950-d742-4940-bfcd-56d8586b11b3 \
  -tfstate vnet_a2_sbcaas_uksouth.tfstate \
  -env alz \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/vnet_a2_sbcaas_uksouth.tfstate.tfplan \
  -a apply