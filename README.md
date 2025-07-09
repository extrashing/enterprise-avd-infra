# Enterprise Azure Virtual Desktop (AVD) Landing Zone

This project automates a complete enterprise-ready Azure Virtual Desktop (AVD) environment using Terraform. Designed to support Hybrid Join, FSLogix profiles, and role-based access control.

## Architecture

![AVD Architecture](./assets/avd-diagram.png)

## What It Deploys

- 🔹 Virtual Network with 3 subnets
- 🔹 Azure Virtual Desktop Host Pool (pooled mode)
- 🔹 Windows 11 Multi-session session hosts
- 🔹 FSLogix profile containers via Azure Files
- 🔹 Hybrid Join configuration
- 🔹 RBAC for AVD admins and users

## Modules

| Module   | Description                              |
|----------|------------------------------------------|
| `network` | Deploys VNet + 3 subnets                |
| `identity` | Hybrid join via AD DS or Azure AD DS   |
| `avd`     | Host pool + session hosts + app group   |
| `storage` | Azure Files for FSLogix profile storage |
| `rbac`    | Role assignments for users/admins       |

## Getting Started

1. Set Azure credentials using environment variables or Azure CLI
2. Clone the repo
3. Fill in values in `terraform.tfvars` or define them in CLI
4. Run:

```bash
terraform init
terraform plan
terraform apply
