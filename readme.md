# Deploy a JavaScript Azure Function App with Terraform

This repo provides sample code for deploying a JavaScript Azure Function App with Terraform.

To get started, execute the login, build, deploy, test & cleanup steps in order.

## Prerequisites

- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- [terraform](https://www.terraform.io/downloads)
- [make](https://www.gnu.org/software/make/)
- [func](https://docs.microsoft.com/en-us/azure/azure-functions/functions-run-local?tabs=v4%2Cmacos%2Ccsharp%2Cportal%2Cbash#install-the-azure-functions-core-tools)

## Authenticate the Azure CLI

If you are using a personal account, run `az login` & `az account show` to check you are logged in.

If you are using an Azure Service Principal for authentication, run

```
export ARM_CLIENT_ID=REPLACE_ME
export ARM_CLIENT_SECRET=REPLACE_ME
export ARM_SUBSCRIPTION_ID=REPLACE_ME
export ARM_TENANT_ID=REPLACE_ME
export ARM_USE_CLI=false
```

## Build

```
make build
```

## Deploy

```
make deploy
```

## Test

```
make test
```

## Cleanup

```
make destroy
```

## Notes

### Function App code template

The Azure Function App in functions/my-function-app was created using the following commands:

```sh
mkdir functions
cd functions
func new --language javascript --name my-function-app --template "HTTP trigger" --authlevel anonymous --worker-runtime node
npm i uuid
```
