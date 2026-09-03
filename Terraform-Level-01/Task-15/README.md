# AWS IAM Group Creation with Terraform

## 📌 Task Description

The **anita DevOps team** has been creating a couple of services on AWS cloud. They have been breaking down the migration into smaller tasks, allowing for better control, risk mitigation, and optimization of resources throughout the migration process. Recently they came up with the following requirements:

**Requirements:**
- Create an IAM group using terraform.
- The name of the IAM group must be **`iamgroup_anita`**.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Provision an IAM group based on the provided requirements to support the anita DevOps team's access management configuration.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS IAM Group (`iamgroup_anita`)

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the IAM group.

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

6. **Verify the IAM Group:**
   You can verify the created group in the AWS Console under IAM, or via the AWS CLI.
   ```bash
   aws iam get-group --group-name iamgroup_anita
   ```
