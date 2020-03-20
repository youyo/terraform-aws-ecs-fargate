resource "aws_ecs_cluster" "this" {
  name               = var.name
  capacity_providers = var.capacity_providers

  default_capacity_provider_strategy {
    capacity_provider = var.default_capacity_provider_strategy_capacity_provider
    base              = var.default_capacity_provider_strategy_base
    weight            = var.default_capacity_provider_strategy_weight
  }

  setting {
    name  = "containerInsights"
    value = var.enable_container_insights ? "enabled" : "disabled"
  }

  tags = merge(
    {
      "Name" = var.name
    },
    var.tags
  )
}
