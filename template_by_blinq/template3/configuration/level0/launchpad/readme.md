# Launchpad - selmer

## Pre-requisites

This scenario requires the following privileges:

| Component          | Privileges           |
|--------------------|----------------------|
| Active Directory   | Global Administrator |
| Azure subscription | Subscription owner   |

## Deployment

### Pre-requisite

Elevate your credentials to the tenant root level to have enough privileges to create the management group hierarchy.

```bash
# Login to the subscription AzLz_Management with the user ext-heintk@selmer365.onmicrosoft.com
rover login -t selmer365.onmicrosoft.com
az rest --method post --url "/providers/Microsoft.Authorization/elevateAccess?api-version=2016-07-01"

```

### Launchpad

```bash
# Login to the subscription AzLz_Management with the user ext-heintk@selmer365.onmicrosoft.com
rover login -t selmer365.onmicrosoft.com -s 2bba06e7-6962-40b0-a572-7f6d04beeeeb

cd /tf/caf/landingzones
git fetch origin
git checkout blinq-5.6.4
git pull

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-idl0-aod.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_launchpad \
  -var-folder /tf/caf/platform/configuration/level0/launchpad \
  -tfstate_subscription_id 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -target_subscription 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -tfstate caf_launchpad.tfstate \
  -launchpad \
  -env selmer \
  -level level0 \
  -p ${TF_DATA_DIR}/caf_launchpad.tfstate.tfplan \
  -a plan

```

If the plan is not successfull you need to come back to the yaml ignite.yaml, fix the values, re-execute the rover ignite and then rover plan.


```bash 
# On success plan, execute

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-idl0-aod.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_launchpad \
  -var-folder /tf/caf/platform/configuration/level0/launchpad \
  -tfstate_subscription_id 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -target_subscription 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -tfstate caf_launchpad.tfstate \
  -launchpad \
  -env selmer \
  -level level0 \
  -p ${TF_DATA_DIR}/caf_launchpad.tfstate.tfplan \
  -a apply

```

Execute a rover logout and rover login in order to make sure your azure sessions has the Azure groups membership updated.

```bash
rover logout

rover login -t selmer365.onmicrosoft.com

# On success, re-execute the rover ignite

ansible-playbook $(readlink -f ./landingzones/templates/ansible/ansible.yaml) \
  --extra-vars "@$(readlink -f ./platform/definition/ignite.yaml)" \
  -e base_folder=$(pwd)

```

# Next steps

When you have successfully deployed the launchpad you can  move to the next step.

 [Deploy the credentials landing zone](../credentials/readme.md)


# To destroy the launchpad

Destroying the launchpad is a specific opertion that requires the tfstate to be first downloaded in the rover and then run the terraform destroy command. Note the action to use is -a destroy

```bash

rover \
  -lz /tf/caf/landingzones/caf_launchpad \
  -var-folder /tf/caf/platform/configuration/level0/launchpad \
  -tfstate_subscription_id 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -target_subscription 2bba06e7-6962-40b0-a572-7f6d04beeeeb \
  -tfstate caf_launchpad.tfstate \
  -launchpad \
  -env selmer \
  -level level0 \
  -a destroy

```