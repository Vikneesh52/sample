output "workspace_id" {
  description = "The ID of the Databricks workspace."
  value       = azurerm_databricks_workspace.example.id
}

output "cluster_id" {
  description = "The ID of the Databricks cluster."
  value       = azurerm_databricks_workspace_cluster.example.id
}

output "cluster_private_ip_addresses" {
  description = "The private IP addresses of the worker nodes in the Databricks cluster."
  value       = azurerm_databricks_workspace_cluster.example.private_ip_addresses
}

output "cluster_public_ip_addresses" {
  description = "The public IP addresses of the worker nodes in the Databricks cluster."
  value       = azurerm_databricks_workspace_cluster.example.public_ip_addresses
}
