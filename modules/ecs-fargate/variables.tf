variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "sg_id" {
  description = "Security group ID for ALB"
  type        = string
}

variable "dynatrace_tenant" {
  description = "Dynatrace tenant URL"
  type        = string
}

variable "dynatrace_token" {
  description = "Dynatrace token"
  type        = string
  sensitive   = true
}

variable "ecs_cluster_name" {
  description = "ECS cluster name"
  type        = string
}

variable "ecs_desired_count" {
  description = "Desired task count"
  type        = number
}

variable "nginx_image" {
  description = "Nginx image"
  type        = string
}

variable "task_family" {
  description = "Task family"
  type        = string
}

variable "container_port" {
  description = "Container port"
  type        = number
}
