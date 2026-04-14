# Terraform Modular EC2 Progress

## Completed
- [x] versions.tf
- [x] provider.tf
- [x] variables.tf
- [x] terraform.tfvars
- [x] outputs.tf (fixed duplicates)
- [x] main.tf
- [x] Modules: vpc, security-group, ec2-instance

## Completed
- [x] Fix duplicate outputs
- [x] Enhance Jenkinsfile 
- [x] terraform init
- [x] terraform validate

## Next Steps
- Fill terraform.tfvars with dynatrace_token and key_name
- Configure Jenkins credentials: 'aws-access-key-id', 'aws-secret-access-key', 'dynatrace-token'
- git add . && git commit -m "Fix modules and Jenkinsfile" && git push
- Run Jenkins pipeline

## ECS Fargate + Dynatrace Phase
**Defaults:** cluster_name="nginx-cluster", desired_count=1, nginx_image="nginx:alpine"

**Steps:**
1. [ ] Add ECS vars to variables.tf + terraform.tfvars
2. [ ] Create modules/ecs-fargate/{variables.tf, main.tf, outputs.tf} (cluster, ALB, taskdef nginx+dynatrace-agent, service)
3. [ ] Edit main.tf: Add module "ecs_fargate" call (reuse vpc/subnet/sg)
4. [ ] Update outputs.tf: ALB dns for ECS
5. [ ] terraform plan/apply
6. [ ] Verify ALB URL nginx + Dynatrace metrics/logs

## Pending
- [x] EC2 verify (user confirmed working)

