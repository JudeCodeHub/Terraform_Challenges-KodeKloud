# AWS DynamoDB Table Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** needs to set up a DynamoDB table for storing user data. They have been breaking down the migration into smaller tasks, allowing for better control, risk mitigation, and optimization of resources throughout the migration process. Recently they came up with the following requirements:

**Requirements:**
- Create a DynamoDB table using terraform.
- The table name should be **`xfusion-users`**.
- The primary key should be **`xfusion_id`** (String).
- The table should use **`PAY_PER_REQUEST`** billing mode.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Provision a DynamoDB table based on the provided requirements to support user data storage for the Nautilus DevOps team.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS DynamoDB Table (`xfusion-users`)
  - Primary Key: `xfusion_id` (String)
  - Billing Mode: `PAY_PER_REQUEST`

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the DynamoDB table.

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

6. **Verify the DynamoDB Table:**
   You can verify the created table in the AWS Console under DynamoDB, or via the AWS CLI.
   ```bash
   aws dynamodb describe-table --table-name xfusion-users
   ```
