
# Identity
Deploy the identity services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t selmer365.onmicrosoft.com -s 2bba06e7-6962-40b0-a572-7f6d04beeeeb

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-id-wmt.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level1/identity \
  -tfstate_subscription_id 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -target_subscription 31a647bc-ff57-4d3e-8612-539d22542d71 \
  -tfstate identity.tfstate \
  -env selmer \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a plan

```


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)
