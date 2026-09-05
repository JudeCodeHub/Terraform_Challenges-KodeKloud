# Delete IAM Group While Keeping Terraform Code

## 📌 Task Description

The **Nautilus DevOps team** is currently engaged in a cleanup process, focusing on removing unnecessary data and services from their AWS account. As part of the migration process, several resources were created for one-time use only, necessitating a cleanup effort to optimize their AWS environment.

**Requirements:**
- Delete an IAM group named **`iamgroup_james`** using Terraform.
- Make sure to keep the provisioning code, as we might need to provision this group again later.

👉 **Your task:** Delete the IAM group via Terraform without removing its resource block, so it can be re-provisioned later.

---

## 🔧 Infrastructure Overview

**Target Environment:** AWS Cloud
**Provider:** AWS (Amazon Web Services)
**Resources:**
- AWS IAM Group (`iamgroup_james`) — to be deleted, code retained in `main.tf`

**Working Directory:** `/home/bob/terraform`

---

## 🚀 Implementation Steps

To execute this task on the target system, follow these steps:

1. **Navigate to the Working Directory:**
   ```bash
   cd /home/bob/terraform
   ```

2. **Keep the Configuration File As-Is:**
   The `aws_iam_group` resource block stays untouched so it can be reused later:
   ```hcl
   resource "aws_iam_group" "this" {
     name = "iamgroup_james"
   }
   ```

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. **Destroy Only the IAM Group:**
   Use a targeted destroy so only this resource is removed, leaving the code in place for later reuse.
   ```bash
   terraform destroy -target=aws_iam_group.this -auto-approve
   ```

5. **Verify the Group is Deleted:**
   ```bash
   aws iam get-group --group-name iamgroup_james
   ```
   This command should return an error (`NoSuchEntity`), confirming the group no longer exists.
</content>
