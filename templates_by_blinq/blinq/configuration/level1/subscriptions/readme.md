
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t blinqservices.onmicrosoft.com \

rover \
  --impersonate-sp-from-keyvault-url https://alz-kv-scp-xxx.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -target_subscription 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -tfstate platform_subscriptions.tfstate \
  -env alz \
  -level level1 \
  -w tfstate \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```

