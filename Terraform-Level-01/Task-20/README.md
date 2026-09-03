# AWS SSM Parameter Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** needs to create an SSM parameter in AWS. They have been breaking down the migration into smaller tasks, allowing for better control, risk mitigation, and optimization of resources throughout the migration process. Recently they came up with the following requirements:

**Requirements:**
- Create an SSM parameter using terraform.
- The name of the parameter should be **`datacenter-ssm-parameter`**.
- Set the parameter type to **`String`**.
- Set the parameter value to **`datacenter-value`**.
- The parameter should be created in the **`us-east-1`** region.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Provision an SSM parameter based on the provided requirements to support the Nautilus DevOps team's configuration management.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Region:** `us-east-1`
**Resources:** 
- AWS SSM Parameter (`datacenter-ssm-parameter`)
  - Type: `String`
  - Value: `datacenter-value`

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the SSM parameter.

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

6. **Verify the SSM Parameter:**
   You can verify the created parameter in the AWS Console under Systems Manager > Parameter Store, or via the AWS CLI.
   ```bash
   aws ssm get-parameter --name datacenter-ssm-parameter --region us-east-1
   ```
