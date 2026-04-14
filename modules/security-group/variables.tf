variable "sg_name" {
  description = "Security group name"
  type        = string
  default     = "nginx-sg"
}

variable "vpc_id" {
  description = "VPC ID for security group"
  type        = string
}

