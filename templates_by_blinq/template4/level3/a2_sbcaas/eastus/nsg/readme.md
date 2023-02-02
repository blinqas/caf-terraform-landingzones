
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t blinqservices.onmicrosoft.com \

rover \
  --impersonate-sp-from-keyvault-url https://alz-kv-lzs-cih.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/a2_sbcaas/eastus/nsg \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -target_subscription 26fa8950-d742-4940-bfcd-56d8586b11b3 \
  -tfstate nsg = {
  -env alz \
  -level level3 \
  -w tfstate \
  -p ${TF_DATA_DIR}/nsg = {
  -a plan

```

