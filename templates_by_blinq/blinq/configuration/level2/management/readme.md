
# Management
Deploy the management services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t blinqservices.onmicrosoft.com \ -s 21a5bbce-56bb-48b5-bf13-b063e77045bb

rover \
  --impersonate-sp-from-keyvault-url https://alz-kv-mg-psq.vault.azure.net \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/management \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -target_subscription 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -tfstate management_level2.tfstate \
  -env alz \
  -level level2 \
  -p ${TF_DATA_DIR}/management_level2.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the management landing zone, you can move to the next step:

[Deploy Identity](../../level1/identity/readme.md)
