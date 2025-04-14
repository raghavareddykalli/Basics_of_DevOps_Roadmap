# Day 1: Mastering Terraform — Real-World Project, Remote Backend, and Modules

This session is focused on getting hands-on with **Terraform** — one of the most essential tools in infrastructure as code (IaC). We’ll explore how to build a complete Terraform project, set up **remote backend** for collaborative workflows, and use **Terraform modules** to structure reusable code.

---

## 📌 What Is Terraform?

Terraform is an **open-source infrastructure as code tool** created by HashiCorp. It allows DevOps engineers and developers to **define, provision, and manage infrastructure** across various cloud providers (AWS, Azure, GCP) using a simple, declarative language called HCL (HashiCorp Configuration Language).

Unlike cloud provider-specific tools (like AWS CloudFormation), Terraform is **cloud-agnostic**, enabling consistent infrastructure management across platforms.

---

## 🧰 Prerequisites

- AWS account with IAM credentials (access key + secret key)

- Basic understanding of cloud services like EC2, S3, and IAM

- Terraform CLI installed (see installation steps below)

- Optional: Familiarity with shell and basic terminal commands

---

## 🛠️ Installation Instructions

### ✅ For macOS:

```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform```

### ✅ For Linux (Debian/Ubuntu):

```sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install terraform```

### ✅ For Windows:

Download and install from the official Terraform site:

https://developer.hashicorp.com/terraform/downloads

## 🏗️ Creating Your First Terraform Project

Your Terraform project should include the following key files:


| File              | Purpose                                             |
|-------------------|-----------------------------------------------------|
| `main.tf`         | Contains actual resources like EC2, S3, etc.        |
| `variables.tf`    | Declares input variables used in your config        |
| `terraform.tfvars`| Provides values for the declared variables          |
| `provider.tf`     | Defines the cloud provider and credentials          |
| `backend.tf`      | *(Optional)* Configures remote backend              |

## 📁 Sample Folder Structure

<pre> terraform-project/ ├── main.tf ├── variables.tf ├── terraform.tfvars ├── provider.tf └── backend.tf </pre>

## 🔐 Provider Configuration (AWS Example)

**provider.tf**

```provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}```

**variables.tf**

```variable "region" {}
variable "access_key" {}
variable "secret_key" {}```

## ☁️ Local vs Remote Backend

### 🔄 Local Backend (Not Recommended for Teams)

By default, Terraform stores the state file (terraform.tfstate) locally. This can lead to:

-Accidental overwrites

-No locking (race conditions)

-Poor collaboration

### 🌐 Remote Backend (Best Practice)

Use S3 for state storage and DynamoDB for state locking:

**backend.tf**

```terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "state/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}```

**Benefits**:

-Centralized state tracking

-Locking to prevent simultaneous changes

-Better collaboration across teams

## 📦 Terraform Modules

Modules let you organize reusable code. Each module should contain its own:

-```main.tf```

-```variables.tf```

-```outputs.tf```

#### Example Usage:

```module "vpc" {
  source     = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
}```

**Benefits**:

-DRY (Don't Repeat Yourself)

-Scalable and easier to maintain

-Encourages clean architecture

## 🔄 Terraform Workflow Commands

| Command              | Description                                        |
|----------------------|----------------------------------------------------|
| `terraform init`     | Initializes backend and installs providers         |
| `terraform validate` | Validates the configuration files                  |
| `terraform plan`     | Shows what changes will be made                    |
| `terraform apply`    | Applies changes to reach desired state             |
| `terraform destroy`  | Destroys infrastructure managed by Terraform       |

#### 💡 Tip: Always run ```terraform plan``` before ```terraform apply``` to review what will change.

## 🧠 Common Challenges and Best Practices

### ❗ Manual Infrastructure Changes

If someone modifies resources outside of Terraform (e.g., via AWS Console), Terraform will not be aware. In such cases:

-Use ```terraform refresh``` to sync state

-Use ```terraform import``` to bring existing resources under Terraform control

**Rule of thumb**: Avoid making changes outside Terraform.

### 🔒 Secure Your State File

-Enable S3 encryption

-Don’t push ```.tfstate``` files to Git

-Use IAM policies to restrict S3 and DynamoDB access

## 🧪 Real-World Use Cases Covered

-EC2 provisioning

-S3 bucket with versioning

-Remote backend setup using S3 + DynamoDB

-Module-based structure for reusable VPCs or EC2 setups

## 💼 Interview Preparation — Key Concepts

| Question                         | Explanation                                                        |
|----------------------------------|---------------------------------------------------------------------|
| What is Terraform?               | An IaC tool for provisioning and managing cloud infrastructure      |
| Why use remote backend?          | Enables collaboration and prevents state conflicts                  |
| What are Terraform modules?      | Reusable blocks of Terraform configuration                          |
| What happens with manual changes?| Terraform state becomes out of sync                                 |
| Why avoid local state in teams?  | Can't share or lock; risk of corruption                             |
| How to manage environments?      | Use workspaces or separate state files per environment              |
