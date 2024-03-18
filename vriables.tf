variable "resource_group_name" {
  description = "The name of the resource group in which to create the Databricks workspace and cluster."
  type        = string
}

variable "workspace_name" {
  description = "The name of the Databricks workspace."
  type        = string
}

variable "cluster_name" {
  description = "The name of the Databricks cluster."
  type        = string
}

variable "location" {
  description = "The Azure region in which to create the resources."
  type        = string
}

variable "spark_version" {
  description = "The version of Apache Spark to use for the Databricks cluster."
  type        = string
}

variable "node_type_id" {
  description = "The type of Azure Virtual Machines to use as workers in the Databricks cluster."
  type        = string
}

variable "num_workers" {
  description = "The number of worker nodes in the Databricks cluster."
  type        = number
}

variable "enable_autoscale" {
  description = "Whether to enable autoscaling for the Databricks cluster."
  type        = bool
}

variable "min_workers" {
  description = "The minimum number of worker nodes in the Databricks cluster when autoscaling is enabled."
  type        = number
}

variable "max_workers" {
  description = "The maximum number of worker nodes in the Databricks cluster when autoscaling is enabled."
  type        = number
}
