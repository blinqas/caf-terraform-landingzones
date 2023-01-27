
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t selmer365.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-id-wmt.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level2/identity/prod \
  -tfstate_subscription_id 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -target_subscription 31a647bc-ff57-4d3e-8612-539d22542d71 \
  -tfstate identity_level2_prod.tfstate \
  -env selmer \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/identity_level2_prod.tfstate.tfplan \
  -a plan

```

