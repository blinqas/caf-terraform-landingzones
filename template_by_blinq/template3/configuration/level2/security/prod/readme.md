
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t selmer365.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-id-wmt.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level2/security/prod \
  -tfstate_subscription_id 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -target_subscription b0d21c7f-d47b-4a11-931c-d21d4a48a093 \
  -tfstate security_level2_prod.tfstate \
  -env selmer \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/security_level2_prod.tfstate.tfplan \
  -a plan

```

