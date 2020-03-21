resource "aws_ecs_cluster" "this" {
  name               = var.name
  capacity_providers = var.capacity_providers

  dynamic "default_capacity_provider_strategy" {
    for_each = var.default_capacity_provider_strategy

    content {
      capacity_provider = default_capacity_provider_strategy.value["capacity_provider"]
      base              = default_capacity_provider_strategy.value["base"]
      weight            = default_capacity_provider_strategy.value["weight"]
    }
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
