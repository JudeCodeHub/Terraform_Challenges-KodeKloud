# Backup and Delete S3 Bucket with Terraform

## 📌 Task Description

The **Nautilus DevOps team** is currently engaged in a cleanup process, focusing on removing unnecessary data and services from their AWS account. As part of the migration process, several resources were created for one-time use only, necessitating a cleanup effort to optimize their AWS environment.

A S3 bucket named **`xfusion-bck-6903`** already exists.

**Requirements:**
1. Copy the contents of the **`xfusion-bck-6903`** S3 bucket to the **`/opt/s3-backup/`** directory on the `terraform-client` host (the landing host once the lab loads).
2. Delete the S3 bucket **`xfusion-bck-6903`**.
3. Use the AWS CLI through Terraform to accomplish this task — for example, by running AWS CLI commands within Terraform.
4. The Terraform working directory is **`/home/bob/terraform`**.
5. Update the **`main.tf`** file (do not create a separate .tf file) to accomplish this task.

👉 **Your task:** Back up the bucket's contents locally, then delete the bucket, driving both steps from Terraform.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud + local `terraform-client` host
**Provider:** AWS (Amazon Web Services), executed via local AWS CLI commands
**Resources:**
- AWS S3 Bucket (`xfusion-bck-6903`) — pre-existing, to be emptied and removed
- `null_resource` with a `local-exec` provisioner — runs the AWS CLI commands from Terraform

**Working Directory:** `/home/bob/terraform`
**Backup Destination:** `/opt/s3-backup/` on `terraform-client`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Update the Configuration File:**
   Add a `null_resource` that uses a `local-exec` provisioner to create the backup directory, sync the bucket contents into it, and then remove the bucket:
   ```hcl
   # Add your code below
   resource "null_resource" "s3_backup_and_delete" {
     provisioner "local-exec" {
       command = <<-EOT
         mkdir -p /opt/s3-backup/
         aws s3 sync s3://xfusion-bck-6903 /opt/s3-backup/
         aws s3 rb s3://xfusion-bck-6903 --force
       EOT
     }
   }
   ```

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. **Review the Execution Plan:**
   Check the planned changes before applying them.
   ```bash
   terraform plan
   ```

5. **Apply the Configuration:**
   ```bash
   terraform apply -auto-approve
   ```

6. **Verify the Backup:**
   Confirm the bucket contents were copied to the local directory.
   ```bash
   ls -la /opt/s3-backup/
   ```

7. **Verify the Bucket was Deleted:**
   Confirm the bucket no longer exists.
   ```bash
   aws s3 ls s3://xfusion-bck-6903
   ```
</content>
