output "alb_dns_name" {
  description = "ALB DNS name"
  value       = aws_alb.nginx_alb.dns_name
}

output "cluster_arn" {
  description = "ECS cluster ARN"
  value       = aws_ecs_cluster.nginx_cluster.arn
}
