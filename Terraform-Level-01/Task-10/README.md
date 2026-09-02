# AWS EBS Snapshot Creation with Terraform

## 📌 Task Description

The **Nautilus DevOps team** has some volumes in different regions in their AWS account. They are going to setup some automated backups so that all important data can be backed up on regular basis. For now they shared some requirements to take a snapshot of one of the volumes they have.

**Requirements:**
- Create a snapshot of an **existing volume** named **`xfusion-vol`** in the `us-east-1` region using Terraform.
- The name of the snapshot must be **`xfusion-vol-ss`**.
- The description must be **`Xfusion Snapshot`**.
- Make sure the snapshot status is **completed** before submitting the task.
- The Terraform working directory is **`/home/bob/terraform`**.
- Update the **`main.tf`** file (do not create a separate .tf file) to accomplish this task.

👉 **Your task:** Use Terraform to fetch the existing `xfusion-vol` volume via a data source and create an EBS snapshot of it for backup purposes.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud (us-east-1 region)
**Provider:** AWS (Amazon Web Services)
**Resources:** 
- AWS EBS Snapshot (`xfusion-vol-ss`) from an existing EBS volume

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Update the Configuration File:**
   Ensure `main.tf` contains the appropriate Terraform configurations for the AWS Provider, the `aws_ebs_volume` data source (to fetch the existing volume), and the `aws_ebs_snapshot` resource.

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

6. **Verify the EBS Snapshot:**
   You can verify the created snapshot in the AWS Console under EC2 -> Snapshots, or via the AWS CLI. Ensure the status is "completed".
   ```bash
   aws ec2 describe-snapshots --filters "Name=tag:Name,Values=xfusion-vol-ss" --region us-east-1
   ```
