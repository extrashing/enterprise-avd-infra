


# 💼 Enterprise Azure Virtual Desktop (AVD) Landing Zone

This project provisions a full enterprise-ready **Azure Virtual Desktop** (AVD) environment using **Terraform**. It supports hybrid join, FSLogix profile containers, RBAC, and modular infrastructure.

---

## 🧱 What It Deploys

- Azure Resource Group and VNet with 3 subnets
- Hybrid-joined Windows 11 AVD session hosts
- FSLogix profile containers using Azure Files
- Pooled AVD Host Pool with Desktop App Group
- RBAC for IT Admins and AVD users

---

## 🧩 Terraform Modules

| Module     | Description                                 |
|------------|---------------------------------------------|
| `network`  | Deploys VNet and 3 subnets                  |
| `identity` | Hybrid domain join via extension            |
| `avd`      | Host pool, session hosts, app group         |
| `storage`  | Azure Files for FSLogix profiles            |
| `rbac`     | Role assignments for users and administrators |

---

## 📸 Architecture Diagram

![AVD Architecture](./assets/avd-architecture.png)

---

## ⚙️ Prerequisites

- Azure subscription (Owner or Contributor role)
- Terraform v1.5+ installed
- Azure CLI authenticated (`az login`)
- Optional: Azure AD DS or Hybrid Domain Controller

---

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/enterprise-avd-infra.git
   cd enterprise-avd-infra


2. Create a `terraform.tfvars` file from the example:

   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

3. Fill in values in `terraform.tfvars`

4. Initialize Terraform and deploy:

   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

---

## 🧪 Testing & Validation (Post-Deployment)

If deployed fully, this setup will:

* Domain-join AVD session hosts using Hybrid Join
* Configure Azure Files and FSLogix for roaming profiles
* Make the AVD desktop available to assigned users
* Provide Contributor access to admins and Desktop Virtualization User to users

---

## 📂 Repo Structure

```bash
enterprise-avd-infra/
├── modules/
│   ├── avd/
│   ├── identity/
│   ├── network/
│   ├── rbac/
│   └── storage/
├── assets/
│   └── avd-architecture.png
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── README.md
├── LICENSE
└── .gitignore
```

---

## 📄 License

Apache 2.0 — see the [LICENSE](./LICENSE) file.

---

## 🙋‍♂️ Author

**Shina Alabi**
Cloud & Infrastructure Solutions Architect
[LinkedIn](https://www.linkedin.com/in/alabishina) • [GitHub](https://github.com/extrashing)

