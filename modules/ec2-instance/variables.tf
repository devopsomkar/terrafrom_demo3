variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "subnet_id" {
  type = string
}

variable "sg_id" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "root_volume_size" {
  type    = number
  default = 8
}

variable "dynatrace_tenant" {
  type = string
}

variable "dynatrace_token" {
  type      = string
  sensitive = true
}

variable "key_name" {
  type = string
}

