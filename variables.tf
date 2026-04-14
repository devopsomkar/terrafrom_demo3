variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "dynatrace_connection_point" {
  description = "Dynatrace connection point or ActiveGate endpoint"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "root_volume_size" {
  description = "Root volume size (GB)"
  type        = number
  default     = 8
}

variable "availability_zone" {
  description = "Availability zone"
  type        = string
  default     = "us-east-1a"
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
  default     = "ok"
}

variable "dynatrace_tenant" {
  description = "https://abc123.live.dynatrace.com"
  type        = string
}

variable "dynatrace_token" {
  description = "Dynatrace token"
  type        = string
  sensitive   = true
}

variable "ecs_cluster_name" {
  description = "ECS Fargate cluster name"
  type        = string
  default     = "nginx-cluster"
}

variable "ecs_desired_count" {
  description = "Desired number of ECS tasks"
  type        = number
  default     = 1
}

variable "nginx_image" {
  description = "Nginx Docker image"
  type        = string
  default     = "nginx:alpine"
}

variable "task_family" {
  description = "ECS task family"
  type        = string
  default     = "nginx-task"
}

variable "container_port" {
  description = "Nginx port"
  type        = number
  default     = 80
}

