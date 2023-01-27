
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t selmer365.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-scp-uhy.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level1/subscriptions \
  -tfstate_subscription_id 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -target_subscription 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -tfstate platform_subscriptions.tfstate \
  -env selmer \
  -level level1 \
  -w tfstate \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```

