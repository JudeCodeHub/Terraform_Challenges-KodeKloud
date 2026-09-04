# AWS CloudFormation Stack Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** is working on automating infrastructure deployment using AWS CloudFormation. As part of this effort, they need to create a CloudFormation stack that provisions an S3 bucket with versioning enabled.

**Requirements:**
- Create a CloudFormation stack named **`devops-stack`** using Terraform.
- The stack should contain an S3 bucket named **`devops-bucket-23781`** as a resource.
- The bucket must have **versioning enabled**.
- The Terraform working directory is **`/home/bob/terraform`**.
- Create the **`main.tf`** file (do not create a different .tf file) to accomplish this task.

👉 **Your task:** Provision a CloudFormation stack via Terraform that creates a versioned S3 bucket for the Nautilus DevOps team's infrastructure automation.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS CloudFormation Stack (`devops-stack`)
  - S3 Bucket (`devops-bucket-23781`)
    - Versioning: `Enabled`

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Create the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the CloudFormation stack with an embedded S3 bucket template.

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

6. **Verify the CloudFormation Stack:**
   You can verify the created stack in the AWS Console under CloudFormation, or via the AWS CLI.
   ```bash
   aws cloudformation describe-stacks --stack-name devops-stack
   ```

7. **Verify the S3 Bucket:**
   Confirm the S3 bucket was created with versioning enabled.
   ```bash
   aws s3api get-bucket-versioning --bucket devops-bucket-23781
   ```
