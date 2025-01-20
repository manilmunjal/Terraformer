Here is an updated, well-structured, and precise `README.md` file for the "Terraformer" project, formatted for industry-level standards:

---

# **Terraformer (AWS-IAC-POC)**

This repository automates the deployment of AWS infrastructure using **Terraform**, as part of a **Proof of Concept (POC)**. It demonstrates Infrastructure as Code (IaC) principles, showcasing how to efficiently manage and provision AWS resources through reusable, scalable, and modular Terraform code.

---

## 📋 **Table of Contents**

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Resources Provisioned](#resources-provisioned)
- [Directory Structure](#directory-structure)
- [Contributing](#contributing)

---

## 📖 **Overview**

This POC has the following objectives:

- Demonstrate **Terraform** as an effective Infrastructure as Code (IaC) tool.
- Automate the provisioning of key AWS resources.
- Promote the use of **modular** and **scalable** Terraform configurations.

---

## 🔧 **Prerequisites**

Before using this repository, ensure you have the following prerequisites:

1. **Terraform CLI**: Install Terraform following the [official guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).
2. **AWS CLI**: Install AWS CLI from [here](https://aws.amazon.com/cli/) and configure it:
   ```bash
   aws configure
   ```
3. An **AWS account** with sufficient permissions to create resources.
4. **Backend S3 bucket** for storing Terraform state (optional, but recommended). Modify the backend configuration in `Terraform-vpc/provider.tf` as needed.
5. Ensure your AWS account has the necessary permissions for resource provisioning.

---

## 🚀 **Usage**

To get started, **clone the repository** and navigate to the appropriate directory:

```bash
git clone https://github.com/manilmunjal/AWS-IAC-POC.git
cd AWS-IAC-POC/Terraform-vpc
```

### **Manual Terraform Usage (Normal Mode)**

1. **Initialize Terraform:**

   ```bash
   terraform init
   ```

2. **Validate the Terraform configuration:**

   ```bash
   terraform validate
   ```

3. **Create an execution plan:**

   ```bash
   terraform plan
   ```

4. **Apply the configuration:**

   ```bash
   terraform apply
   ```

5. **Destroy the infrastructure (when no longer needed):**

   ```bash
   terraform destroy
   ```

---

### **Automated GitHub Actions (Epic Mode)**

#### **Triggering the Terraform CI/CD Pipeline**

This guide explains how to manually trigger the Terraform CI/CD pipeline using GitHub Actions to deploy AWS resources.

---

#### **Steps to Trigger the Workflow**

1. **Navigate to GitHub Actions:**
   - Open your GitHub repository.
   - Click on the **Actions** tab.

2. **Locate the Terraform Workflow:**
   - Find the **Terraform CI/CD pipeline for AWS resource deployment** workflow.
   - Click on it to view the details.

3. **Trigger the Workflow:**
   - Click on **Run workflow** on the right side.
   - Select the following options:
     - **Workspace**: Choose `dev`, `test`, or `prod`.
     - **Deployment Type**: Choose `deploy` to provision resources or `destroy` to remove resources.
   - Click **Start workflow**.

4. **Monitor the Workflow:**
   - Refresh the page to monitor the workflow's progress.
   - The workflow includes:
     - **Terraform Init**: Initializes the Terraform configuration.
     - **Terraform Validate**: Validates the configuration.
     - **Workspace Selection**: Selects the workspace (`dev`, `test`, or `prod`).
     - **Terraform Plan**: Previews the changes.
     - **Terraform Apply/Destroy**: Applies the configuration or destroys resources.

---

#### **Input Details**

- **Workspace**: Select the environment (`dev`, `test`, `prod`).
- **Deployment Type**: Choose `deploy` to provision resources or `destroy` to delete resources.

---

#### **Conclusion**

Use these steps to **trigger** and **monitor** the Terraform CI/CD pipeline to manage AWS resources.

---

## 🏗️ **Resources Provisioned**

This POC provisions the following AWS resources:

- **Virtual Private Cloud (VPC)**: A custom VPC to host resources.
- **Subnets**: Multiple subnets to allocate resources.
- **Security Groups**: To control traffic in/out of resources.
- **Internet Gateway**: Provides internet access for public subnets.
- **Route Tables & Associations**: To route traffic appropriately.
- **Application Load Balancer (ALB)**: Distributes incoming traffic across EC2 instances.
- **EC2 Instances**: Virtual machines running your applications.

---

## 📂 **Directory Structure**

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

## 🤝 **Contributing**

We welcome contributions! To contribute:

1. **Fork** this repository.
2. **Create a new branch** for your feature or bugfix.
3. **Submit a pull request** with a detailed description of your changes.

---

**Happy Coding! 🚀**

