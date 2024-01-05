terraform {
  backend "remote" {
    organization = "zambrana"

    workspaces {
      name = "work-SimpleRG"
    }
  }
  required_version = "= 1.6.6"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 3.84.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "genericRG" {
  name     = "${var.suffix}${var.rgName}"
  location = var.location
  tags     = var.tags
}
