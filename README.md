# azure-terraform
To hold azure infra (IAC)

`Terraform providers are a kind of wrappers which help us to generate infra like azurerm, available on Terraform registry`

`To prevent automatic upgrade to new major versions, that may contain breaking changes, terraform recommends adding version constraints in required_providers block` 

```hcl
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
```

## To install, upgrade and set your az subscription

*   brew update && brew install azure-cli
*   brew upgrade azure-cli or az upgrade

*   az --version
	
*   az login
*   az account list
*   az account set —subscription =	"Subscription ID"