terraform {
  required_version = "<= 1.8.14"
  backend "azurerm" {
    resource_group_name   = "CommonRG"
    storage_account_name  = "sk521htfstate"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}
provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}
# Your code goes here
