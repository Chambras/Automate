terraform {
  backend "remote" {
    organization = "zambrana"

    workspaces {
      name = "work-SimpleRG"
    }
  }
  required_version = "= 1.3.0"
  required_providers {
    azurerm = "= 3.24.0"
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
