provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "sample"
  location = "East US"
}

resource "azurerm_databricks_workspace" "sampwp" {
  name                = "myself"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "standard"
}

resource "azurerm_databricks_workspace_cluster" "clus" {
  resource_group_name   = azurerm_resource_group.example.name
  workspace_name        = azurerm_databricks_workspace.example.name
  cluster_name          = "samplemyself"
  spark_version         = "7.3.x-scala2.12"
  node_type_id          = "Standard_DS3_v2"
  num_workers           = 2
  enable_autoscale      = false
  min_workers           = 2
  max_workers           = 4
}
