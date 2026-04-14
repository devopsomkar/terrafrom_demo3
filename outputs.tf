

output "ec2_public_ip" {
  value = module.ec2_instance.public_ip
}

output "ec2_public_dns" {
  value = module.ec2_instance.public_dns
}

output "dynatrace_host_url" {
  value = "https://${replace(var.dynatrace_tenant, "https://", "")}/#hosts/otmk/hostDetails;hostId=${module.ec2_instance.instance_id}"
}

output "ecs_alb_dns" {
  description = "ECS ALB DNS name"
  value       = module.ecs_fargate.alb_dns_name
}

output "ecs_cluster_arn" {
  description = "ECS cluster ARN"
  value       = module.ecs_fargate.cluster_arn
}


