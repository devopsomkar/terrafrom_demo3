# Multi-AZ VPC Fix for ALB
- [ ] Update modules/vpc/main.tf (2 subnets)
- [ ] Update modules/vpc/variables.tf
- [ ] Update modules/vpc/outputs.tf  
- [ ] Update modules/ecs-fargate/variables.tf (subnet_ids)
- [ ] Update modules/ecs-fargate/main.tf (ALB subnets = var.subnet_ids)
- [ ] Update main.tf (pass subnet_ids)
- [ ] terraform validate
- [ ] Commit & push blackboxai/multi-az-fix
- [ ] Re-run Jenkins

