# Enable S3 Bucket Versioning with Terraform

## 📌 Task Description

Data protection and recovery are fundamental aspects of data management. It's essential to have systems in place to ensure that data can be recovered in case of accidental deletion or corruption. The **DevOps team** has received a requirement for implementing such measures for one of the S3 buckets they are managing.

**Requirements:**
- The S3 bucket name is **`nautilus-s3-15328`**.
- Enable versioning for this bucket using Terraform.
- The Terraform working directory is **`/home/bob/terraform`**.
- Update the **`main.tf`** file (do not create a separate .tf file) to accomplish this task.

👉 **Your task:** Enable versioning on the existing S3 bucket using Terraform.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:**
- AWS S3 Bucket (`nautilus-s3-15328`) — pre-existing
- AWS S3 Bucket Versioning — enables versioning on the bucket

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Import the Existing Bucket into Terraform State:**
   Since the bucket already exists, import it before applying any changes.
   ```bash
   terraform import aws_s3_bucket.s3_ran_bucket nautilus-s3-15328
   ```

3. **Update the Configuration File:**
   Ensure `main.tf` references the existing bucket and adds an `aws_s3_bucket_versioning` resource:
   ```hcl
   # Enable Versioning
   resource "aws_s3_bucket_versioning" "s3_ran_bucket_versioning" {
     bucket = aws_s3_bucket.s3_ran_bucket.id

     versioning_configuration {
       status = "Enabled"
     }
   }
   ```

4. **Initialize Terraform:**
   ```bash
   terraform init
   ```

5. **Review the Execution Plan:**
   Check the planned changes before applying them.
   ```bash
   terraform plan
   ```

6. **Apply the Configuration:**
   ```bash
   terraform apply -auto-approve
   ```

7. **Verify Versioning is Enabled:**
   Confirm the bucket now has versioning enabled.
   ```bash
   aws s3api get-bucket-versioning --bucket nautilus-s3-15328
   ```
</content>
