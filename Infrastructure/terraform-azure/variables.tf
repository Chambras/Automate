variable "location" {
  type        = string
  default     = "eastus2"
  description = "Location where the resoruces are going to be created."
}

variable "suffix" {
  type        = string
  default     = "Demo"
  description = "To be added at the beginning of each resource."
}

variable "rgName" {
  type        = string
  default     = "TestRG"
  description = "Resource Group Name."
}

variable "tags" {
  type = map(any)
  default = {
    "Environment" = "Development"
    "Project"     = "Test GitHub Actions"
    "BillingCode" = "Internal"
    "Customer"    = "Demo"
    "Version"     = 1
  }
  description = "tags to be applied to the resource."
}

## Purview Account Variables

variable "purviewAccountName" {
  type        = string
  default     = "TFmarcelo"
  description = "Purview Account Name."
}

variable "notused" {
  type        = string
  default     = "notused"
  description = "not used."
}

