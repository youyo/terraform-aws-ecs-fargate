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
variable "default_capacity_provider_strategy" {
  type        = list(map(string))
  description = "The capacity provider strategy to use by default for the cluster"
  default = [
    {
      capacity_provider = "FARGATE"
      base              = 1
      weight            = 1
    },
    {
      capacity_provider = "FARGATE_SPOT"
      base              = 0
      weight            = 1
    }
  ]
}
variable "tags" {
  type        = map(string)
  default     = {}
  description = "A mapping of tags to assign to the resource"
}
