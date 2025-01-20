# AWS-IAC-POC

This repository contains Terraform code for automating the deployment of AWS infrastructure as part of a Proof of Concept (POC). The goal is to showcase Infrastructure as Code (IaC) principles and demonstrate how to efficiently manage and provision AWS resources using Terraform.

---

## 📋 Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Resources Provisioned](#resources-provisioned)
- [Directory Structure](#directory-structure)
- [Contributing](#contributing)
- [License](#license)

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
git clone https://github.com/your-username/AWS-IAC-POC.git
cd AWS-IAC-POC

