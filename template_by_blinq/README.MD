# Templates

Each folder contains different templates for different use cases.

## Template1
- This template only deploy terraform state management based on Rover Launchpad and Azure resources for backend and identity. This template allow public access to storage accounts and key vaults from spesific whitelisted IP's.

## Template2
- Template 1 + GitHub Action runner. This template close the public access to keyvaults and storage accounts and create private endpoints, private dns zones and only allow access from the self hosted GitHub Action runner.

## Template3
This template implement a full Azure Landing Zone for Azure CAF Level0, Level1, Level2 and onboard the first App Landing Zone for deployment of CAF Level3 and Level4.

Template also create:

- Azure Landing Zone Vending Machine (ALVM) to produce terraform variables to onboard new App Landing Zones in a existing or new Management Group level. New Landing Zones can be created based on a set of different archtypes who spesify:
    - Policy Initiatives
    - Policy Definitions
    - Policy Assignments
    - Role based access control

- Azure Subscription Vending Machine (ASVM) to onboard new Azure Subscription in a preconfigured App Landing Zone and Management Group level.