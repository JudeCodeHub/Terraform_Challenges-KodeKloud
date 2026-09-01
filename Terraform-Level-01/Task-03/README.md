# AWS VPC Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** is strategizing the migration of a portion of their infrastructure to the **AWS cloud**. Recognizing the scale of this undertaking, they have opted to approach the migration in incremental steps rather than as a single massive transition. To achieve this, they have segmented large tasks into smaller, more manageable units.

This granular approach enables the team to execute the migration in gradual phases, ensuring smoother implementation and minimizing disruption to ongoing operations. By breaking down the migration into smaller tasks, the Nautilus DevOps team can systematically progress through each stage, allowing for better control, risk mitigation, and optimization of resources throughout the migration process.

**Requirements:**
- Create a VPC named **`datacenter-vpc`**.
- Deploy in region **`us-east-1`**.
- Use any IPv4 CIDR block.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file).

👉 **Your task:** Create a Virtual Private Cloud (VPC) using Terraform to establish the foundational network infrastructure for the Nautilus application migration.

💡 **Note:** This VPC will serve as the isolated network environment for future AWS resources in the migration process.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud (us-east-1 region)
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS VPC with custom IPv4 CIDR block
- Network isolation for application resources
- Foundation for subnet and security group deployment

**Working Directory:** `/home/bob/terraform`

---

## 📋 Solution Overview

### 🏗️ Architecture Components
- **VPC Resource:** Creates an isolated virtual network in AWS.
- **IPv4 CIDR Block:** Defines the IP address range for the VPC (e.g., `10.0.0.0/16`).
- **Resource Tagging:** Proper naming convention for resource identification.
- **Regional Deployment:** Deployed specifically in `us-east-1` region.

### 🎯 Implementation Strategy
1. Define VPC resource with appropriate CIDR block.
2. Configure proper naming through tags.
3. Use standard private IP range for internal networking.
4. Ensure resource is properly tagged for management.

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
   aws ec2 describe-vpcs --filters Name=tag:Name,Values=datacenter-vpc --region us-east-1
   ```
