# AWS S3 Public Bucket Creation with Terraform

## 📌 Task Description

As part of the data migration process, the **Nautilus DevOps team** is actively creating several S3 buckets on AWS. They plan to utilize both private and public S3 buckets to store the relevant data. Given the ongoing migration of other infrastructure to AWS, it is logical to consolidate data storage within the AWS environment as well.

**Requirements:**
- Create a **public S3 bucket** named **`datacenter-s3-24561`** using Terraform.
- Ensure the bucket is accessible publicly once created by setting the proper **ACL**.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Use Terraform to provision an Amazon S3 bucket, disable block public access settings, configure bucket ownership controls, and apply a `public-read` ACL so the bucket can be accessed publicly.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS S3 Bucket (`datacenter-s3-24561`)
- S3 Bucket Public Access Block (to allow public ACLs)
- S3 Bucket Ownership Controls (to support ACLs in modern AWS accounts)
- S3 Bucket ACL (`public-read`)

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the AWS Provider and the S3 resources.

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
   You can verify the created bucket in the AWS Console under S3, or via the AWS CLI. Ensure public access is enabled.
   ```bash
   aws s3api get-bucket-acl --bucket datacenter-s3-24561
   ```
