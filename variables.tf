variable "name" {
  type        = string
  default     = "my-cluster"
  description = "A name for your ecs cluster"
}
variable "capacity_providers" {
  type        = list(string)
  default     = ["FARGATE", "FARGATE_SPOT"]
  description = "List of short names of one or more capacity providers to associate with the cluster"
}
variable "enable_container_insights" {
  type        = bool
  default     = true
  description = "Enable CloudWatch Container Insights for a cluster"
}
variable "default_capacity_provider_strategy_capacity_provider" {
  type        = string
  default     = "FARGATE_SPOT"
  description = "The short name of the capacity provider"
}
variable "default_capacity_provider_strategy_base" {
  type        = number
  default     = 0
  description = "The number of tasks, at a minimum, to run on the specified capacity provider"
}
variable "default_capacity_provider_strategy_weight" {
  type        = number
  default     = 1
  description = "The relative percentage of the total number of launched tasks that should use the specified capacity provider"
}
variable "tags" {
  type        = map(string)
  default     = {}
  description = "A mapping of tags to assign to the resource"
}
