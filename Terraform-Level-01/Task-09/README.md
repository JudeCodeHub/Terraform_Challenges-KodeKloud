# AWS EBS Volume Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** is strategizing the migration of a portion of their infrastructure to the **AWS cloud**. Recognizing the scale of this undertaking, they have opted to approach the migration in incremental steps rather than as a single massive transition. To achieve this, they have segmented large tasks into smaller, more manageable units.

This granular approach enables the team to execute the migration in gradual phases, ensuring smoother implementation and minimizing disruption to ongoing operations. By breaking down the migration into smaller tasks, the Nautilus DevOps team can systematically progress through each stage, allowing for better control, risk mitigation, and optimization of resources throughout the migration process.

**Requirements:**
- Create an AWS **EBS volume** using Terraform.
- Name of the volume should be **`datacenter-volume`**.
- Volume type must be **`gp3`**.
- Volume size must be **`2 GiB`**.
- Ensure the volume is created in **`us-east-1`**.
- The Terraform working directory is **`/home/bob/terraform`**.
- Update the **`main.tf`** file (do not create a separate .tf file) to accomplish this task.

👉 **Your task:** Provision a fast, general-purpose (`gp3`) Elastic Block Store (EBS) volume for future use by EC2 instances in the infrastructure.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud (us-east-1 region)
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS EBS Volume (`gp3`, 2 GiB)

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create/Update the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the AWS Provider and the EBS Volume resource.

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

6. **Verify the EBS Volume:**
   You can verify the created EBS volume in the AWS Console under EC2 -> Volumes, or via the AWS CLI.
   ```bash
   aws ec2 describe-volumes --filters "Name=tag:Name,Values=datacenter-volume" --region us-east-1
   ```
