variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
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
  description = "Dynatrace tenant URL"
  type        = string
}

variable "dynatrace_token" {
  description = "Dynatrace token"
  type        = string
  sensitive   = true
}

