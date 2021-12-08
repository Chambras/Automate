terraform {
  backend "remote" {
    organization = "zambrana"

    workspaces {
      name = "work-SimpleRG"
    }
  }
  required_version = "= 1.0.11"
  required_providers {
    azurerm = "= 2.88.1"
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
