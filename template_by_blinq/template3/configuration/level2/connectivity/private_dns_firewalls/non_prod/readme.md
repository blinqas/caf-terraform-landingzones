
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t selmer365.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-co-myj.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level2/connectivity/private_dns_firewalls/non_prod \
  -tfstate_subscription_id 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -target_subscription e8a165dd-7334-4b84-bf3b-fbacba427a88 \
  -tfstate connectivity_private_dns_firewalls_non_prod.tfstate \
  -env selmer \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/connectivity_private_dns_firewalls_non_prod.tfstate.tfplan \
  -a plan

```

