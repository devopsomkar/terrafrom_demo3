# Terraform Module Structure Plan

## Information Gathered
- Current flat structure.
- Latest GitHub changes pulled (user_data.sh, main.tf updates).
- Dependencies: Data sources → resources.

## Directory Structure
```
.
├── main.tf                 # Calls modules
├── variables.tf            # Root vars
├── outputs.tf              # Root outputs
├── provider.tf
├── terraform.tfvars
├── .gitignore
├── Jenkinsfile
├── modules/
│  ├── vpc/
│  │  ├── main
