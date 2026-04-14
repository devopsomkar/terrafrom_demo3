#!/bin/bash
yum update -y
yum install -y nginx
systemctl start nginx
systemctl enable nginx

# Dynatrace OneAgent install
TENANT=$(curl -s "http://169.254.169.254/latest/meta-data/instance-id")
TOKEN="${dynatrace_token}"
curl -H "Authorization: Api-Token ${TOKEN}" -H 'Content-Type: application/json' -X PUT "https://${dynatrace_tenant}/api/v1/host/${TENANT}?keepAlive=true" -d '{"autoUpdateEnabled":true}'

