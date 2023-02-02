
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t blinqservices.onmicrosoft.com -s 26fa8950-d742-4940-bfcd-56d8586b11b3

cd /tf/caf/landingzones
git fetch origin
git checkout main

rover \
  --impersonate-sp-from-keyvault-url https://bslz-kv-scl-gdg.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/sbcaas/prod/norwayeast \
  -tfstate_subscription_id 6b512967-3707-4e63-8643-cea88222789d \
  -target_subscription 26fa8950-d742-4940-bfcd-56d8586b11b3 \
  -tfstate sbc002-norwayeast-level3.tfstate \
  -env bslz \
  -level level3 \
  -w sbcaas-prod \
  -p ${TF_DATA_DIR}/sbcaas_prod_norwayeast_level3.tfstate.tfplan \
  -a plan

```

# This key vault hold the landingzone service principal details, we can't use this in norwayeast
# because vnet and peering is created in the same state (landingzone) as the application.
# Normally vnet and peering should be established when the landingzone is created
--impersonate-sp-from-keyvault-url https://kv-sbcaasprod001-mbr.vault.azure.net/ \


rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/sbcaas/prod/norwayeast \
  -tfstate_subscription_id 6b512967-3707-4e63-8643-cea88222789d \
  -target_subscription 26fa8950-d742-4940-bfcd-56d8586b11b3 \
  -tfstate sbc002-norwayeast-level3.tfstate \
  -env bslz \
  -level level3 \
  -w sbcaas-prod \
  -p ${TF_DATA_DIR}/sbcaas_prod_norwayeast_level3.tfstate.tfplan \
  -a plan