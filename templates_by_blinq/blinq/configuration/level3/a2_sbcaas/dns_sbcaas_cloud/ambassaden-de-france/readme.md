
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t blinqservices.onmicrosoft.com \

rover \
  --impersonate-sp-from-keyvault-url https://alz-kv-lzs-cih.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/a2_sbcaas/customers/ambassaden-de-france \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -target_subscription c6f3347e-7428-42c1-bccc-6950e66a5e8b \
  -tfstate customer_ambassaden-de-france.tfstate \
  -env alz \
  -level level3 \
  -w tfstate \
  -p ${TF_DATA_DIR}/customer_ambassaden-de-france.tfstate.tfplan \
  -a plan

```

