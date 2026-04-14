# Terraform Modular EC2 Progress

## Completed
- [x] versions.tf
- [x] provider.tf
- [x] variables.tf
- [x] terraform.tfvars
- [x] outputs.tf (fixed duplicates)
- [x] main.tf
- [x] Modules: vpc, security-group, ec2-instance

## Completed
- [x] Fix duplicate outputs
- [x] Enhance Jenkinsfile 
- [x] terraform init
- [x] terraform validate

## Next Steps
- Fill terraform.tfvars with dynatrace_token and key_name
- Configure Jenkins credentials: 'aws-access-key-id', 'aws-secret-access-key', 'dynatrace-token'
- git add . && git commit -m "Fix modules and Jenkinsfile" && git push
- Run Jenkins pipeline

## Pending
- [ ] Verify EC2/Nginx/Dynatrace
- [ ] Git push
- [ ] Jenkins CI/CD run
