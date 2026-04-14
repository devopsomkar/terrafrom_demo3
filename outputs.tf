output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.nginx_server.public_ip
}

output "ec2_public_dns" {
  description = "Public DNS of the EC2 instance"
  value       = aws_instance.nginx_server.public_dns
}

output "ec2_public_ip" {
  value = module.ec2_instance.public_ip
}

output "ec2_public_dns" {
  value = module.ec2_instance.public_dns
}

output "dynatrace_host_url" {
  value = "https://${replace(var.dynatrace_tenant, "https://", "")}/#hosts/otmk/hostDetails;hostId=${module.ec2_instance.instance_id}"
}


