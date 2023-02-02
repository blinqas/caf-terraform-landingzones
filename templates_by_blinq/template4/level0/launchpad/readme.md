# Launchpad - alz

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
rover login -t blinqservices.onmicrosoft.com \
az rest --method post --url "/providers/Microsoft.Authorization/elevateAccess?api-version=2016-07-01"

```

### Launchpad

```bash
rover login -t blinqservices.onmicrosoft.com \ -s 21a5bbce-56bb-48b5-bf13-b063e77045bb

cd /tf/caf
git clone https://github.com/blinqas/caf-terraform-landingzones landingzones
cd landingzones
git fetch origin
git checkout blinq-5.6.4
git pull

rover \
  --impersonate-sp-from-keyvault-url https://alz-kv-idl0-pfc.vault.azure.net \
  -lz /tf/caf/landingzones/caf_launchpad \
  -var-folder /tf/caf/configuration/level0/launchpad \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -target_subscription 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -tfstate caf_launchpad.tfstate \
  -launchpad \
  -env alz \
  -level level0 \
  -p ${TF_DATA_DIR}/caf_launchpad.tfstate.tfplan \
  -a plan

```

If the plan is not successfull you need to come back to the yaml ignite.yaml, fix the values, re-execute the rover ignite and then rover plan.


```bash 
# On success plan, execute

rover \
  --impersonate-sp-from-keyvault-url https://alz-kv-idl0-pfc.vault.azure.net \
  -lz /tf/caf/landingzones/caf_launchpad \
  -var-folder /tf/caf/configuration/level0/launchpad \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -target_subscription 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -tfstate caf_launchpad.tfstate \
  -launchpad \
  -env alz \
  -level level0 \
  -p ${TF_DATA_DIR}/caf_launchpad.tfstate.tfplan \
  -a apply

```

Execute a rover logout and rover login in order to make sure your azure sessions has the Azure groups membership updated.

```bash
rover logout

rover login -t blinqservices.onmicrosoft.com \

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
  -var-folder /tf/caf/configuration/level0/launchpad \
  -target_subscription 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -tfstate_subscription_id 21a5bbce-56bb-48b5-bf13-b063e77045bb \
  -tfstate caf_launchpad.tfstate \
  -launchpad \
  -env alz \
  -level level0 \
  -a destroy

```