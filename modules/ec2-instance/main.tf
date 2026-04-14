resource "aws_instance" "nginx_server" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = true
  key_name                    = var.key_name

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"
  }

  user_data = templatefile("${path.module}/user_data.sh", {
    dynatrace_tenant = var.dynatrace_tenant
    dynatrace_token  = var.dynatrace_token
  })

  tags = {
    Name        = "nginx-dynatrace-server"
    Environment = "dev"
    Dynatrace   = "monitored"
  }
}

output "instance_id" {
  value = aws_instance.nginx_server.id
}

output "public_ip" {
  value = aws_instance.nginx_server.public_ip
}

output "public_dns" {
  value = aws_instance.nginx_server.public_dns
}

