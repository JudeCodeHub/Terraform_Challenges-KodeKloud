# AWS Secrets Manager Secret Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** needs to store sensitive data securely using AWS Secrets Manager. They need to create a secret with specific credentials for their applications.

**Requirements:**
- Create a secret using Terraform in AWS Secrets Manager.
- The secret name should be **`xfusion-secret`**.
- The secret value should contain a key-value pair with **`username: admin`** and **`password: Namin123`**.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Provision an AWS Secrets Manager secret based on the provided requirements to securely store credentials for the Nautilus DevOps team.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS Secrets Manager Secret (`xfusion-secret`)
  - Key-Value Pairs: `username: admin`, `password: Namin123`
- AWS Secrets Manager Secret Version (stores the actual secret value)

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the Secrets Manager secret and its version.

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

6. **Verify the Secret:**
   You can verify the created secret in the AWS Console under Secrets Manager, or via the AWS CLI.
   ```bash
   aws secretsmanager get-secret-value --secret-id xfusion-secret
   ```
