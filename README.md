# Terraformer (AWS-IAC-POC)

Terraformer (AWS-IAC-POC) is a comprehensive Terraform-based solution designed to automate the deployment of AWS infrastructure. As part of a Proof of Concept (POC), it demonstrates the principles of Infrastructure as Code (IaC) and showcases how to efficiently manage AWS resources using Terraform. The repository is structured to support scalable and modular infrastructure configurations, allowing users to automate the provisioning of key AWS resources like Virtual Private Cloud (VPC), EC2 instances, Load Balancers, and more. Additionally, it integrates with GitHub Actions for a fully automated CI/CD pipeline, enabling seamless deployment and destruction of infrastructure across different environments (dev, test, prod). Whether you're manually provisioning infrastructure or leveraging the automated pipeline, Terraformer provides a flexible and powerful solution for managing cloud resources efficiently.

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Prerequisites](#-prerequisites)
- [Usage](#-usage)
  - [Manual Terraform Usage](#manual-terraform-usage)
  - [Automated GitHub Actions CI/CD Pipeline](#automated-github-actions-cicd-pipeline)
- [Resources Provisioned](#%EF%B8%8F-resources-provisioned)
- [Directory Structure](#-directory-structure)
- [Contributing](#-contributing)

---

## 📖 Overview

This Proof of Concept (POC) aims to:

- Demonstrate the power of **Terraform** as an effective tool for **Infrastructure as Code (IaC)**.
- Automate the provisioning of AWS resources, showcasing the potential for scaling and managing infrastructure.
- Promote the use of **reusable**, **scalable**, and **modular** Terraform code that can be adapted for various cloud architectures.

---

## 🔧 Prerequisites

Before using this repository, ensure you have the following installed and configured:

1. **Terraform CLI**:  
   Install Terraform by following the official [Terraform Installation Guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).
   
2. **AWS CLI**:  
   Install and configure AWS CLI using the instructions provided in the official [AWS CLI User Guide](https://aws.amazon.com/cli/).
   Configure your AWS credentials:
   ```bash
   aws configure

3. **AWS Account**:  
   Ensure you have an AWS account with the **necessary permissions** to create and manage resources.

4. **Terraform Backend** (Optional but recommended):  
   Configure a remote backend (e.g., AWS S3) for storing the **Terraform state**. Modify the `backend` block in `Terraform-vpc/provider.tf` to match your S3 bucket name.

5. **Secrets pass**
    Pass the secrets in the github action secrets for AWS access

---

## 🚀 Usage

### Manual Terraform Usage

Follow these steps for manual provisioning of AWS resources using Terraform:

1. Clone the repository:

   ```bash
   git clone https://github.com/manilmunjal/AWS-IAC-POC.git
   cd AWS-IAC-POC
   cd Terraform-vpc
   ```

2. Initialize the Terraform environment:

   ```bash
   terraform init
   ```

3. Validate the Terraform configuration files:

   ```bash
   terraform validate
   ```

4. Create an execution plan for Terraform:

   ```bash
   terraform plan
   ```

5. Apply the configuration to provision resources:

   ```bash
   terraform apply
   ```

   Confirm the action when prompted.

6. If necessary, destroy the provisioned infrastructure:

   ```bash
   terraform destroy
   ```

---

### Automated GitHub Actions CI/CD Pipeline

For automated deployment and management of AWS resources, this repository is integrated with GitHub Actions.

#### Triggering the Terraform CI/CD Pipeline

This section explains how to manually trigger the Terraform CI/CD pipeline via GitHub Actions for deploying AWS resources.

##### **Steps to Trigger the Workflow**

1. **Navigate to GitHub Actions**:
   - Open your GitHub repository.
   - Click on the **Actions** tab.

2. **Locate the Terraform Workflow**:
   - Find the **Terraform CI/CD pipeline for Deploy AWS resources** workflow on the left side.
   - Click on it to open the details.

3. **Trigger the Workflow**:
   - Click on **Run workflow** on the right side.
   - Select the following options:
     - **Workspace**: Choose from `dev`, `test`, or `prod`.
     - **Deployment Type**: Choose `deploy` or `destroy`.
   - Click **Start workflow**.

4. **Monitor the Workflow**:
   - Refresh the page to view the workflow progress. The workflow will execute the following steps:
     - **Terraform Init**: Initializes Terraform.
     - **Terraform Validate**: Validates the configuration.
     - **Workspace Selection**: Selects the workspace.
     - **Terraform Plan**: Previews the deployment or destruction.
     - **Terraform Apply/Destroy**: Applies the changes or destroys resources.

##### **Input Details**

- **Workspace**: Choose the environment (`dev`, `test`, or `prod`).
- **Deployment Type**: Choose `deploy` to deploy or `destroy` to remove resources.

#### **Conclusion**

By following the above steps, you can easily trigger and monitor the Terraform CI/CD pipeline for deploying or destroying resources in your selected workspace.

---

## 🏗️ Resources Provisioned

This POC provisions the following AWS resources:

- **Virtual Private Cloud (VPC)**: A custom VPC to host resources.
- **Subnets**: Multiple subnets for better resource segregation.
- **Security Groups**: Controls inbound and outbound traffic.
- **Internet Gateway**: Provides internet access for resources in public subnets.
- **Route Tables & Associations**: Manages routing of internet traffic.
- **Application Load Balancer (ALB)**: Distributes incoming traffic across EC2 instances.
- **EC2 Instances**: Virtual machines to run applications.

---

## 📂 Directory Structure

Here’s a breakdown of the directory structure:

```bash
AWS-IAC-POC/
├── modules/                # Reusable Terraform modules
├── dev.tfvars              # Development environment variables
├── main.tf                 # Main Terraform configuration file
├── prod.tfvars             # Production environment variables
├── provider.tf             # Terraform provider configuration
├── test.tfvars             # Test environment variables
├── variables.tf            # Input variables for Terraform configurations
```

---

## 🤝 Contributing

We welcome contributions to this repository! To contribute, follow these steps:

1. **Fork** this repository.
2. **Create a new branch** for your feature or bugfix.
3. **Make your changes** and test thoroughly.
4. **Submit a pull request** with a detailed description of your changes.

---

