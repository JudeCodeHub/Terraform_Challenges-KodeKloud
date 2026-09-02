# AWS Private S3 Bucket Creation with Terraform

## 📌 Task Description

As part of the data migration process, the **Nautilus DevOps team** is actively creating several S3 buckets on AWS using Terraform. They plan to utilize both private and public S3 buckets to store the relevant data. Given the ongoing migration of other infrastructure to AWS, it is logical to consolidate data storage within the AWS environment as well.

**Requirements:**
- Create an S3 bucket using Terraform.
- The name of the S3 bucket must be **`devops-s3-3933`**.
- The S3 bucket must block all public access, making it a private bucket.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Provision a secure Amazon S3 bucket that blocks all forms of public access to ensure data privacy and security.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS S3 Bucket (`devops-s3-3933`)
- S3 Bucket Public Access Block (to block all public access)

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the S3 bucket and the S3 Public Access Block.

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

6. **Verify the S3 Bucket:**
   You can verify the created bucket in the AWS Console under S3, or via the AWS CLI. Ensure public access is completely blocked.
   ```bash
   aws s3api get-public-access-block --bucket devops-s3-3933
   ```
