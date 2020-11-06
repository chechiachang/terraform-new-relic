terraform {
  backend "azurerm" {}

  required_version = "~> 0.13.5"

  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 2.13.3"
    }
  }
}
