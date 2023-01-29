
### Generate launchpad credentials

```bash
# For manual bootstrap:
# Login to the subscription AzLz_Management with the user ext-heintk@{{ ignite.global.onmicrosoft_domain }} \
rover login -t {{ ignite.global.onmicrosoft_domain }} \

rover \
{% if "not deployed" not in ignite.global.cred_keyvaults.cred_identity.stdout %}
  --impersonate-sp-from-keyvault-url {{ ignite.global.cred_keyvaults.cred_identity.stdout }}.vault.azure.net \
{% endif %}
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level0/credentials \
  -tfstate_subscription_id {{ ignite.global.subscriptions.sub_management }} \
  -target_subscription {{ ignite.global.subscriptions.sub_management }} \
  -tfstate launchpad_credentials.tfstate \
  -launchpad \
  -env {{ ignite.global.env }} \
  -level level0 \
  -p ${TF_DATA_DIR}/launchpad_credentials.tfstate.tfplan \
  -a plan

```

If the plan is not successfull you need to come back to the yaml ignite.yaml, fix the values, re-execute the rover ignite and then rover plan.


```bash 
# On success plan, execute

rover \
{% if "not deployed" not in ignite.global.cred_keyvaults.cred_identity.stdout %}
  --impersonate-sp-from-keyvault-url {{ ignite.global.cred_keyvaults.cred_identity.stdout }}.vault.azure.net \
{% endif %}
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level0/credentials \
  -tfstate_subscription_id {{ ignite.global.subscriptions.sub_management }} \
  -target_subscription {{ ignite.global.subscriptions.sub_management }} \
  -tfstate launchpad_credentials.tfstate \
  -launchpad \
  -env {{ ignite.global.env }} \
  -level level0 \
  -p ${TF_DATA_DIR}/launchpad_credentials.tfstate.tfplan \
  -a apply

```

```bash
# On success, re-execute the rover ignite

ansible-playbook $(readlink -f ./landingzones/templates/ansible/ansible.yaml) \
  --extra-vars "@$(readlink -f ./platform/definition/ignite.yaml)" \
  -e base_folder=$(pwd)

```

Now if you refresh the readme of the credentials deployment, you will notice the rover command has been updated to impersonate the execution of the rover based on the credentials that have just been created and stored in the keyvault. The goal here is to execute the deployment steps using the same privileges that will be used later when using a pipeline.

Just re-execute the plan/apply command as above and you will notice the rover will login as the identity service principal. When executed, execute a rover logout as the next step will be executed under a different security context.

# Next steps

When you have successfully deployed the launchpad you can  move to the next step.

 [Deploy the subscription services](../../level1/subscriptions/readme.md)
