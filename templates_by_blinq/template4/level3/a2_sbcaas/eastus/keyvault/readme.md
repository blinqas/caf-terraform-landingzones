
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t blinqservices.onmicrosoft.com \

rover \
  --impersonate-sp-from-keyvault-url https://alz-kv-sec-jid.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3/a2_sbcaas/eastus/keyvault \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -target_subscription ae93f1aa-35bb-44d4-bb7a-9fe7406743b3 \
  -tfstate security_disk_encryptions_sbc004a_eastus.tfstate \
  -env alz \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/security_disk_encryptions_sbc004a_eastus.tfstate.tfplan \
  -a plan

```

