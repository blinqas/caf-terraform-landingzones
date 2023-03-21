
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t blinqservices.onmicrosoft.com \

rover \
  --impersonate-sp-from-keyvault-url https://alz-kv-co-ydm.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/connectivity/dns_zone_sbcaas_cloud \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -target_subscription c6f3347e-7428-42c1-bccc-6950e66a5e8b \
  -tfstate dns_zone_sbcaas_cloud.tfstate \
  -env alz \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/dns_zone_sbcaas_cloud.tfstate.tfplan \
  -a plan

```

