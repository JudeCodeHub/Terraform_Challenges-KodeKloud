# AWS VPC Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** is strategically planning the migration of a portion of their infrastructure to the **AWS cloud**. Acknowledging the magnitude of this endeavor, they have chosen to tackle the migration incrementally rather than as a single, massive transition. Their approach involves creating Virtual Private Clouds (VPCs) as the initial step, as they will be provisioning various services under different VPCs.

**Requirements:**
- Create a VPC named **`xfusion-vpc`**.
- Deploy in region **`us-east-1`**.
- Use IPv4 CIDR block **`192.168.0.0/24`**.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file).

👉 **Your task:** Create a Virtual Private Cloud (VPC) using Terraform to establish the foundational network infrastructure.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud (us-east-1 region)
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS VPC with CIDR block `192.168.0.0/24`

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` is created in this directory with the appropriate Terraform configurations for the AWS Provider and VPC.

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

6. **Verify the VPC:**
   You can verify the created VPC in the AWS Console under VPC, or via the AWS CLI.
   ```bash
   aws ec2 describe-vpcs --filters Name=tag:Name,Values=xfusion-vpc --region us-east-1
   ```
