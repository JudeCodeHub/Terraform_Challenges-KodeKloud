# AWS AMI Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** is strategizing the migration of a portion of their infrastructure to the **AWS cloud**. Recognizing the scale of this undertaking, they have opted to approach the migration in incremental steps rather than as a single massive transition. To achieve this, they have segmented large tasks into smaller, more manageable units.

This granular approach enables the team to execute the migration in gradual phases, ensuring smoother implementation and minimizing disruption to ongoing operations. By breaking down the migration into smaller tasks, the Nautilus DevOps team can systematically progress through each stage, allowing for better control, risk mitigation, and optimization of resources throughout the migration process.

**Requirements:**
- Create an **AMI** from an existing EC2 instance named **`devops-ec2`** using Terraform.
- Name of the AMI should be **`devops-ec2-ami`**.
- Make sure the AMI is in an available state.
- The Terraform working directory is **`/home/bob/terraform`**.
- Update the **`main.tf`** file (do not create a separate .tf file) to create the AMI.

👉 **Your task:** Use Terraform to fetch the existing `devops-ec2` instance and provision a custom Amazon Machine Image (AMI) from it. 

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS AMI (from existing EC2 Instance)

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Update the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the AWS Provider, the `aws_instance` data source (if needed to retrieve the ID), and the `aws_ami_from_instance` resource.

3. **Initialize Terraform:**
   Initialize the Terraform working directory to download the necessary providers.
   ```bash
   terraform init
   ```

4. **Review the Execution Plan:**
   Check the planned changes before applying them.
   ```bash
   terraform plan
   ```

5. **Apply the Configuration:**
   Apply the changes to create the resources.
   ```bash
   terraform apply -auto-approve
   ```

6. **Verify the AMI:**
   You can verify the created AMI in the AWS Console under EC2 -> AMIs, or via the AWS CLI.
   ```bash
   aws ec2 describe-images --filters "Name=name,Values=devops-ec2-ami"
   ```
