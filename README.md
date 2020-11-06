Terraform for New Relic
===

This repository manage out new relic resources with terraform and terragrunt.

# Usage

Login azure (for terraform backend)
```
az login
```

[Get New Relic API key from NerGraph Explorer](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/guides/getting_started)
NOTE: not the api key from new relic one page (will get 401 error). The valid API key start with NRAK-

Provide new relic credential
```
export NEW_RELIC_ACCOUNT_ID=
export NEW_RELIC_API_KEY=

cd chechia/base/foundation
terragrunt init && terragrunt plan
```

---

# First time? Let's Get-Started!

### Install tools

- Azure-cli [Azure doc: Install azure-cli](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?WT.mc_id=AZ-MVP-5003985)
- Terraform [Azure doc: configure terraform using azure cloud shell](https://docs.microsoft.com/en-us/azure/developer/terraform/get-started-cloud-shell?WT.mc_id=AZ-MVP-5003985)
- Terragrunt [Github: terragrunt](https://github.com/gruntwork-io/terragrunt)

### config Azure cli

[Azure doc: get started with azure cli](https://docs.microsoft.com/en-us/cli/azure/get-started-with-azure-cli?WT.mc_id=AZ-MVP-5003985)

This project use credential from azure-cli.
```
az login
```

### Create resource group, storage account, and storage blob container

[Azure doc: create storage account](https://docs.microsoft.com/en-us/azure/storage/common/storage-account-create?WT.mc_id=AZ-MVP-5003985&tabs=azure-cli#create-a-storage-account-1)

[Azure doc: Configure storage account](https://docs.microsoft.com/en-us/azure/developer/terraform/store-state-in-azure-storage?WT.mc_id=AZ-MVP-5003985#configure-storage-account)

```
RESOURCE_GROUP_NAME=base
LOCATION=southeastasia

az group create \
  --name ${RESOURCE_GROUP_NAME} \
  --location ${LOCATION}

STORAGE_ACCOUNT_NAME=base

az storage account create \
  --name ${STORAGE_ACCOUNT_NAME} \
  --resource-group ${RESOURCE_GROUP_NAME} \
  --location ${LOCATION} \
  --sku Standard_LRS \
  --kind StorageV2

CONTAINER_NAME=base

az storage container create \
    --account-name ${STORAGE_ACCOUNT_NAME} \
    --name ${CONTAINER_NAME} \
    --auth-mode login
```
