# Terrraformer (AWS-IAC-POC)

This repository contains Terraform code for automating the deployment of AWS infrastructure as part of a Proof of Concept (POC). The goal is to showcase Infrastructure as Code (IaC) principles and demonstrate how to efficiently manage and provision AWS resources using Terraform.

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Prerequisites](#-prerequisites)
- [Usage](#-usage)
- [Resources Provisioned](#%EF%B8%8F-resources-provisioned)
- [Directory Structure](#-directory-structure)
- [Contributing](#-contributing)

---

## 📖 Overview

This POC aims to:
- Showcase Terraform as an effective IaC tool.
- Automate the provisioning of AWS resources.
- Promote reusable, scalable, and modular Terraform code.

---

## 🔧 Prerequisites

Before using this repository, ensure you have the following installed:
1. **Terraform CLI**: [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
2. **AWS CLI**: [Install AWS CLI](https://aws.amazon.com/cli/) and configure it:
   ```bash
   aws configure
3. An AWS account with the **necessary permissions** to create resources.
4. A configured backend for storing **Terraform state** (optional but recommended).
5. Change the **backend S3 bucket** name as per you want to save remotely give all neccessary in backend block at Terraform-vpc/provider.tf

# 🚀 Usage

Clone the repository:

```bash
git clone https://github.com/manilmunjal/AWS-IAC-POC.git
cd AWS-IAC-POC
cd Terraform-vpc
```
### For mannual terraform use this (Normal Mode)
Initialize the Terraform environment:

```bash
terraform init
```

Validate the configuration files to ensure correctness:

```bash
terraform validate
```

Create a Terraform execution plan:

```bash
terraform plan
```

Apply the configuration to provision resources:

```bash
terraform apply
```

Confirm the operation when prompted.

Destroy the infrastructure when no longer needed:

```bash
terraform destroy
```

---

### For automated Github Actions (Epic Mode)
# **Triggering the Terraform CI/CD Pipeline**

This guide explains how to manually trigger the Terraform CI/CD pipeline for AWS resource deployment via GitHub Actions.

---

## **Steps to  Trigger the Workflow**

#### **1. Navigate to GitHub Actions**
- Open your GitHub repository.
- Click on the **Actions** tab.

#### **2. Locate the Terraform Workflow**
- Find the **Terraform CI CD pipeline for Deploy AWS resources** workflow on the left side.
- Click on it to open the details.

#### **3. Trigger the Workflow**
- Click on **Run workflow** on the right side.
- Select the following options:
  - **Workspace**: Choose `dev`, `test`, or `prod`.
  - **Deployment Type**: Choose `deploy` or `destroy`.
- Click **Start workflow**.

#### **4. Monitor the Workflow**
- Refresh the page to view the workflow progress.
- The workflow will execute:
  - **Terraform Init**: Initializes Terraform.
  - **Terraform Validate**: Validates the configuration.
  - **Workspace Selection**: Selects the workspace.
  - **Terraform Plan**: Previews the deployment or destruction.
  - **Terraform Apply/Destroy**: Applies the changes or destroys resources.

---

#### **Input Details**

- **Workspace**: Select the environment (`dev`, `test`, or `prod`).
- **Deployment Type**: Choose `deploy` to deploy or `destroy` to remove resources.

---

#### **Conclusion**

Follow these steps to trigger and monitor the Terraform CI/CD pipeline for deploying or destroying resources in your chosen workspace.




## 🏗️ Resources Provisioned

This POC provisions the following AWS resources:

- **Virtual Private Cloud (VPC)**: A custom VPC to host resources.
- **Subnets**: Multiple subnets for resource allocation.
- **Security Groups**: To control inbound and outbound traffic.
- **Internet Gateway**: To allow internet access for resources in public subnets.
- **Route Tables and Associations**: For routing internet traffic appropriately.
- **Application Load Balancer (ALB)**: To distribute incoming traffic across EC2 instances.
- **EC2 Instances**: Virtual machines to run your applications.

---

## 📂 Directory Structure

```bash
AWS-IAC-POC/
├── modules/                # Reusable Terraform modules
├── dev.tfvars              # Development environment variables
├── main.tf                 # Main Terraform configuration file
├── prod.tfvars             # Production environment variables
├── provider.tf             # Terraform provider configuration
├── test.tfvars             # Test environment variables
├── variables.tf            # Input variables
```

---

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork this repository.
2. Create a new branch for your feature or bugfix.
3. Submit a pull request with a detailed description of your changes.

---

