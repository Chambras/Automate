output "rgName" {
  value       = azurerm_resource_group.genericRG.name
  description = "Resource Group Name."
}

output "test" {
  value       = var.notused
  description = "This is a test output."
}
