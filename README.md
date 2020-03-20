# AWS Lambda Terraform module

Terraform module which creates ECS resources on AWS.

## Requiirements

- Terraform version > 0.12

## Usage

```hcl
module "ecs_fargate_cluster" {
  source = "youyo/ecs-fargate/aws"

  name                                                 = "my-cluster"
  capacity_providers                                   = ["FARGATE", "FARGATE_SPOT"]
  enable_container_insights                            = true
  default_capacity_provider_strategy_capacity_provider = "FARGATE_SPOT"
  default_capacity_provider_strategy_base              = 0
  default_capacity_provider_strategy_weight            = 1

  tags = {
    Env = "production"
  }
}
```
