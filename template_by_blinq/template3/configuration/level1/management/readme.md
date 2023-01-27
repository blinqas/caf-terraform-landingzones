
# Management
Deploy the management services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t selmer365.onmicrosoft.com -s 2bba06e7-6962-40b0-a572-7f6d04beeeeb

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-mg-hrd.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level1/management \
  -tfstate_subscription_id 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -target_subscription 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -tfstate management.tfstate \
  -env selmer \
  -level level1 \
  -p ${TF_DATA_DIR}/management.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the management landing zone, you can move to the next step:

[Deploy Identity](../../level1/identity/readme.md)
