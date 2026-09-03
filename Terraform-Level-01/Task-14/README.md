# AWS IAM User Creation with Terraform

## 📌 Task Description

When establishing infrastructure on the AWS cloud, Identity and Access Management (IAM) is among the first and most critical services to configure. IAM facilitates the creation and management of user accounts, groups, roles, policies, and other access controls. The **Nautilus DevOps team** is currently in the process of configuring these resources and has outlined the following requirements:

**Requirements:**
- Create an IAM user using terraform.
- The name of the IAM user must be **`iamuser_kareem`**.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Provision an IAM user based on the provided requirements to establish identity and access for the Nautilus DevOps team.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS IAM User (`iamuser_kareem`)

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the IAM user.

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

6. **Verify the IAM User:**
   You can verify the created user in the AWS Console under IAM, or via the AWS CLI.
   ```bash
   aws iam get-user --user-name iamuser_kareem
   ```
