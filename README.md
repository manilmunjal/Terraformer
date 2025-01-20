# AWS-IAC-POC

This repository contains Terraform code for automating the deployment of AWS infrastructure as part of a Proof of Concept (POC). The goal is to showcase Infrastructure as Code (IaC) principles and demonstrate how to efficiently manage and provision AWS resources using Terraform.

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Prerequisites](#-prerequisites)
- [Usage](#-usage)
- [Resources Provisioned](#%EF%B8%8F-resources-provisioned)
- [Directory Structure](#-directory-structure)
- [Contributing](#-contributing)
- [License](#-license)

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

# 🚀 Usage

Clone the repository:

```bash
git clone https://github.com/manilmunjal/AWS-IAC-POC.git
cd AWS-IAC-POC
cd Terraform-vpc
```

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

## 🏗️ Resources Provisioned

This POC provisions the following AWS resources:

- **Amazon S3**: For storing static assets and other data.
- **Amazon EC2**: For virtual machine instances.
- **Amazon RDS**: For relational database services.

*(Update this section with specifics about the resources your configuration provisions.)*

---

## 📂 Directory Structure

```bash
# 🚀 Usage

Clone the repository:

```bash
git clone https://github.com/your-username/AWS-IAC-POC.git
cd AWS-IAC-POC
```

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

## 🏗️ Resources Provisioned

This POC provisions the following AWS resources:

- **Amazon S3**: For storing static assets and other data.
- **Amazon EC2**: For virtual machine instances.
- **Amazon RDS**: For relational database services.

*(Update this section with specifics about the resources your configuration provisions.)*

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

## 📜 License

This project is licensed under the MIT License. See the LICENSE file for details.
